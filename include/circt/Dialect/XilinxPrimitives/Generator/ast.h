#include <string>
#include <vector>
#include <variant>
#include <optional>

typedef std::variant<int64_t, std::string> AttributeValue;
typedef std::pair<std::string, AttributeValue> Attribute;
typedef std::optional<Attribute> OptionalAttribute;

struct Indices {
  int64_t hi;
  int64_t lo;
};

enum class Direction {
  INPUT,
  OUTPUT,
  INOUT
};

enum class Radix {
  BINARY,
  OCTAL,
  HEX,
  DECIMAL
};

struct BitvectorLiteral {
  uint64_t width;
  Radix radix;
  std::string value;

  static BitvectorLiteral parse(char*);
};

struct PortDeclaration {
  Direction direction;
  std::optional<Indices> indices;
  std::vector<std::string> identifiers;
};

typedef std::variant<int64_t, double, std::string, BitvectorLiteral> ParameterValue;
typedef std::pair<std::string, ParameterValue> Parameter;

struct ModuleHeader {
  std::string module_name;
  std::vector<Parameter> parameters;
  std::vector<PortDeclaration> port_declarations;
};

struct VerilogModule {
  ModuleHeader header;
  std::vector<Parameter> parameters;
  std::vector<PortDeclaration> port_declarations;
};

void transformAstToMLIRTd(const std::vector<VerilogModule>& verilogModules);
