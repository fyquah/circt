#include <algorithm>
#include <fstream>
#include <iostream>
#include <string>
#include <sstream>

#include "ast.h"

static size_t calculateIndicesWidth(const std::optional<Indices> & indices)
{
  if (indices) {
    auto i = *indices;
    return i.hi - i.lo + 1;
  } else {
    return 1;
  }
}

static std::string createOperandOrResultLine(Direction direction, size_t width, std::string & identifier)
{
  std::stringstream ss;
  
  switch (direction) {
    case Direction::INPUT:
    case Direction::OUTPUT:
      ss << "I<" << width << ">";
      break;
    case Direction::INOUT:
      ss << "InOut<" << width << ">";
      break;
  }
  ss << ":$";
  ss << identifier;
  if (identifier == "OVERFLOW" || identifier == "UNDERFLOW" || identifier == "do") {
    ss << "_";
  }
  return ss.str();
}


static std::string createAttributeLine(const Parameter & parameter)
{
  std::stringstream ss;
  
  if (std::holds_alternative<std::string>(parameter.second)) {
    ss << "StrAttr";
  } else if (std::holds_alternative<double>(parameter.second)) {
    ss << "F64Attr";
  } else if (std::holds_alternative<int64_t>(parameter.second)) {
    // parameter interger x = ... . x will be at least 32 bits here.. and it can be signed.
    ss << "SI64Attr";
  } else if (std::holds_alternative<BitvectorLiteral>(parameter.second)) {
    auto & verilogNumeral = std::get<BitvectorLiteral>(parameter.second);
    ss << "APIntAttr<I<" << verilogNumeral.width << ">>";
  } else {
    assert(false);
  }
  ss << ":$" << parameter.first;
  return ss.str();
}

static Radix parseRadix(char c)
{
  switch (c) {
    case 'b':
    case 'B':
      return Radix::BINARY;
    case 'o':
    case 'O':
      return Radix::OCTAL;
    case 'h':
    case 'H':
      return Radix::HEX;
    case 'd':
    case 'D':
      return Radix::DECIMAL;
  }

  assert(false);
}

BitvectorLiteral BitvectorLiteral::parse(char* start)
{
  char *p = start;
  for (; *p != '\''; p++);

  *p = 0;
  uint64_t width = atol(start);
  *(p++) = '\'';

  auto radix = parseRadix(*(p++));
  return { width, radix, std::string(p) };
}

static std::vector<std::string>
createPortInfoFromPortDeclaration(const PortDeclaration & portDeclaration)
{
  std::vector<std::string> ret;
  for (auto & identifier : portDeclaration.identifiers) {
    std::stringstream ss;
    ss << "{";
    ss << '"'<< identifier << '"' << ", ";
    switch (portDeclaration.direction) {
        case Direction::INPUT:
          ss << "circt::hw::PortDirection::INPUT";
          break;
        case Direction::INOUT:
          ss << "circt::hw::PortDirection::INOUT";
          break;
        case Direction::OUTPUT:
          ss << "circt::hw::PortDirection::OUTPUT";
          break;
    }
    ss << ", ";
    ss << calculateIndicesWidth(portDeclaration.indices);
    ss << "},";
    ret.push_back(ss.str());
  }
  return ret;
}

void transformAstToMLIRTd(const std::vector<VerilogModule>& verilogModules)
{
  std::ofstream tableGenFile("../XilinxRawPrimitives.td");
  std::ofstream primitivesOpsCppFile("../XilinxRawPrimitivesOps.cpp.inc");

  for (auto & verilogModule : verilogModules) {
    std::vector<std::string> operands;
    std::vector<std::string> attributes;
    std::vector<std::string> results;
    std::vector<std::string> portInfos;

    // operands and results
    auto onPortDeclaration = [&](const PortDeclaration & portDeclaration) {
      size_t width = calculateIndicesWidth(portDeclaration.indices);
      switch (portDeclaration.direction) {
        case Direction::INPUT:
        case Direction::INOUT:
          for (auto identifier : portDeclaration.identifiers) {
            operands.push_back(createOperandOrResultLine(portDeclaration.direction, width, identifier));
          }
          break;
        case Direction::OUTPUT:
          for (auto identifier : portDeclaration.identifiers) {
            results.push_back(createOperandOrResultLine(portDeclaration.direction, width, identifier));
          }
          break;
      }
      for (auto s : createPortInfoFromPortDeclaration(portDeclaration)) {
        portInfos.push_back(s);
      }
    };
    std::for_each(
        verilogModule.header.port_declarations.begin(),
        verilogModule.header.port_declarations.end(),
        onPortDeclaration);
    std::for_each(
        verilogModule.port_declarations.begin(),
        verilogModule.port_declarations.end(),
        onPortDeclaration);

    // parameters
    auto onParameter = [&attributes](const Parameter & parameter) {
      attributes.push_back(createAttributeLine(parameter));
    };
    std::for_each(verilogModule.parameters.begin(), verilogModule.parameters.end(), onParameter);
    std::for_each(verilogModule.header.parameters.begin(), verilogModule.header.parameters.end(), onParameter);

    // Actual output follows
    auto className = verilogModule.header.module_name;

    // Hack necessary, to work around tablegen ignoring chars before the first _
    std::replace(className.begin(), className.end(), '_', 'u');

    tableGenFile << "def "
      << className
      << " : XilinxPrimitiveOp<"
      << '"' << verilogModule.header.module_name << "\", "
      << "[]" << "> {\n";

    tableGenFile << "  let summary = \"" << verilogModule.header.module_name << " Xilinx Primitive.\";\n\n";

    tableGenFile << "  let arguments = (ins\n";
    tableGenFile << "    // [input] and [inout] ports follows.\n";
    for (size_t i = 0; i < operands.size() ; i++) {
      tableGenFile << "    " << operands[i] << (i == (operands.size() + attributes.size() - 1) ? "\n" : ",\n");
    }
    tableGenFile << "\n";
    if (attributes.size() == 0) {
      tableGenFile << "    // " << verilogModule.header.module_name << " does not contain any parameters\n";
    } else {
      tableGenFile << "    // " << verilogModule.header.module_name << " parameters follows\n";
    }
    for (size_t i = 0; i < attributes.size() ; i++) {
      tableGenFile << "    " << attributes[i] << (i == (attributes.size() - 1) ? "\n" : ",\n");
    }
    tableGenFile << "  );\n\n";

    tableGenFile << "  let results = (outs\n";
    for (size_t i = 0; i < results.size() ; i++) {
      tableGenFile << "    " << results[i] << (i == results.size() - 1 ? "\n" : ",\n");
    }
    tableGenFile << "  );\n\n";

    tableGenFile << "  let extraClassDeclaration = [{\n";
    tableGenFile << "    static llvm::SmallVector<circt::hw::ModulePortInfo> modulePortInfos(::mlir::MLIRContext *);\n";
    tableGenFile << "  }];\n";
    tableGenFile << "}\n\n";

    primitivesOpsCppFile << "llvm::SmallVector<circt::hw::ModulePortInfo> ";
    primitivesOpsCppFile << "circt::xilinxPrimitives::" << className << "::" << "modulePortInfos(::mlir::MLIRContext *context) {\n";
    primitivesOpsCppFile << "  static const llvm::SmallVector<std::tuple<const char*, circt::hw::PortDirection, uint64_t>> data {\n";
    for (auto & portInfo : portInfos) {
      primitivesOpsCppFile << "    " << portInfo << "\n";
    }
    primitivesOpsCppFile << "  };\n";
    primitivesOpsCppFile << "  return ::createModulePortInfos(context, data);\n";
    primitivesOpsCppFile << "}\n\n";
  }
}

