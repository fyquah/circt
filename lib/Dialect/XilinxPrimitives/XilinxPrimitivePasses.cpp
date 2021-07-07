#include "circt/Dialect/HW/HWOps.h"
#include "circt/Dialect/SV/SVOps.h"
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesDialect.h"
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesOps.h"
#include "circt/Dialect/HW/HWDialect.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Support/LLVM.h"
#include "llvm/ADT/TypeSwitch.h"
#include "mlir/Transforms/DialectConversion.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Support/raw_ostream.h"

using namespace mlir;
using namespace circt;
using namespace xilinxPrimitives;

namespace circt {
namespace xilinxPrimitives {
#define GEN_PASS_CLASSES
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesPasses.h.inc"
} // namespace xilinxPrimitives
} // namespace circt

namespace {
struct XilinxPrimitivesToHWPass : public LowerXilinxPrimitivesToHWBase<XilinxPrimitivesToHWPass> {
  void runOnOperation() override;
};
} // anonymous namespace

static const std::string xilinxPrimitivesNamespace = "xilinxPrimitives";

namespace {
struct LowerToInstance : public RewritePattern {
public:
  using RewritePattern::RewritePattern;

  LowerToInstance(PatternBenefit benefit, MLIRContext *context)
      : RewritePattern(MatchAnyOpTypeTag(), benefit, context) {
      }
  /// This overload constructs a pattern that matches any operation type.

  LogicalResult matchAndRewrite(Operation *operation, PatternRewriter &rewriter) const {
    auto dialectNamespace = operation->getDialect()->getNamespace();
    if (dialectNamespace != xilinxPrimitivesNamespace) {
      return failure();
    }
    auto *context = operation->getContext();
    auto instanceName = StringAttr::get(context, "prim");
    auto moduleName = FlatSymbolRefAttr::get(
        context,
        operation->getName().getStringRef().data() + xilinxPrimitivesNamespace.size() + 1);
    auto parameters = DictionaryAttr::get(context, operation->getAttrs());

    rewriter.replaceOpWithNewOp<hw::InstanceOp>(
        operation,
        operation->getResults().getTypes(),
        instanceName,
        moduleName,
        operation->getOperands(),
        parameters,
        nullptr);

    return success();
  }
};

} // namespace

static llvm::SmallVector<circt::hw::ModulePortInfo>
createModulePortInfos(
    mlir::MLIRContext *context,
    const llvm::ArrayRef<std::tuple<const char*, circt::hw::PortDirection, uint64_t>> portInfos)
{
  llvm::SmallVector<circt::hw::ModulePortInfo> ret;
  uint64_t argumentsIndex = 0;
  uint64_t resultsIndex = 0;
  for (auto & entry : portInfos) {
    auto portNameAttr = mlir::StringAttr::get(context, std::get<0>(entry));
    auto portDirection = std::get<1>(entry);
    auto type = mlir::IntegerType::get(context, std::get<2>(entry));
    uint64_t index = 0;
    switch (portDirection) {
      case circt::hw::PortDirection::INPUT:
      case circt::hw::PortDirection::INOUT:
        index = argumentsIndex++;
        break;
      case circt::hw::PortDirection::OUTPUT:
        index = resultsIndex++; 
        break;
    }
    ret.push_back({ portNameAttr, portDirection, type, index });
  }
  return ret;
}

static circt::hw::HWModuleExternOp createHWModuleExternOpForPrimitive(
    MLIRContext *context,
    Location location,
    llvm::StringRef operationName,
    llvm::ArrayRef<circt::hw::ModulePortInfo> ports
)
{
  mlir::OperationState state(location, ::circt::hw::HWModuleExternOp::getOperationName());
  mlir::OpBuilder odsBuilder(context);

  auto moduleName = StringAttr::get(context, operationName.data() + xilinxPrimitivesNamespace.size() + 1);
  return odsBuilder.create<circt::hw::HWModuleExternOp>(location, moduleName, ports);
}

static void addexternstomodule(ModuleOp present, mlir::ArrayRef<Operation*> externs) {
  mlir::IRRewriter rw(present.getContext());

  for (auto externX : externs) {
    mlir::OpBuilder  builder = rw.atBlockBegin(present.getBody());
    builder.insert(externX);
  }
}

void XilinxPrimitivesToHWPass::runOnOperation() {
  ModuleOp top = getOperation();
  MLIRContext &ctxt = getContext();

  ConversionTarget target(ctxt);
  target.addIllegalDialect<xilinxPrimitives::XilinxPrimitivesDialect>();
  target.addLegalDialect<circt::hw::HWDialect>();
  MLIRContext &context = getContext();
  llvm::DenseSet<llvm::StringRef> createdPrimitives;
  llvm::SmallVector<Operation*> externs;

  top.walk([&](Operation*op){
      // llvm::errs() << "just walkin??? \n" << op->getName().getStringRef();
      auto operationName = op->getName().getStringRef();
      if (!createdPrimitives.contains(operationName)) {
        createdPrimitives.insert(operationName);
        TypeSwitch<Operation*, void>(op)
            .Case<
                #define GET_OP_LIST
                #include "circt/Dialect/XilinxPrimitives/XilinxPrimitives.cpp.inc"
            >([&](auto op) {
              externs.push_back(createHWModuleExternOpForPrimitive(&context, op->getLoc(), operationName, createModulePortInfos(&context, op.primitivePortInfos)));
            })
            .Default([](Operation *) { });
        }
  });
  // llvm::errs() << "just walkin??? " << externs.size() << "\n";
  addexternstomodule(top, externs);
  // llvm::errs() << top << "\n";

  RewritePatternSet patterns(&ctxt);
  patterns.add<LowerToInstance>(1, &ctxt);
  if (failed(applyPartialConversion(top, target, std::move(patterns)))) {
    signalPassFailure();
    return;
  }

  // llvm::errs() << top << "\n";
}

namespace circt {
namespace xilinxPrimitives {
std::unique_ptr<OperationPass<ModuleOp>> createXilinxPrimitivesLowerToHW() {
  return std::make_unique<XilinxPrimitivesToHWPass>();
}
} // namespace xilinxPrimitives
} // namespace circt

namespace {
#define GEN_PASS_REGISTRATION
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesPasses.h.inc"
} // namespace

void circt::xilinxPrimitives::registerXilinxPrimitivesPasses() { registerPasses(); }

