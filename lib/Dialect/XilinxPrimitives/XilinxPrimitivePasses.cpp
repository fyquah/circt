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

namespace {
struct LUT6Lower : public OpConversionPattern<xilinxPrimitives::LUT6> {
public:
  using OpConversionPattern::OpConversionPattern;

  LogicalResult
  matchAndRewrite(xilinxPrimitives::LUT6 lut6, ArrayRef<Value> operands,
                  ConversionPatternRewriter &rewriter) const final {
    auto context = lut6.getContext();
    auto instanceName = StringAttr::get(context, "the_lut6");
    auto moduleName = FlatSymbolRefAttr::get(context, "LUT6");
    auto parameters = DictionaryAttr::get(context, lut6.getOperation()->getAttrs());

    rewriter.replaceOpWithNewOp<hw::InstanceOp>(
        lut6,
        lut6.getResult().getType(),
        instanceName,
        moduleName,
        lut6->getOperands(),
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
    llvm::StringRef primitiveName,
    llvm::ArrayRef<circt::hw::ModulePortInfo> ports
)
{
  mlir::OperationState state(location, ::circt::hw::HWModuleExternOp::getOperationName());
  mlir::OpBuilder odsBuilder(context);

  auto moduleName = StringAttr::get(context, primitiveName);
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
      auto primitiveName = op->getName().getStringRef();
      if (!createdPrimitives.contains(primitiveName)) {
        createdPrimitives.insert(primitiveName);
        using xilinxPrimitives::LUT6;
        TypeSwitch<Operation*, void>(op)
            .Case<
                #define GET_OP_LIST
                #include "circt/Dialect/XilinxPrimitives/XilinxPrimitives.cpp.inc"
            >([&](auto op) {
              externs.push_back(createHWModuleExternOpForPrimitive(&context, op->getLoc(), "LUT6", createModulePortInfos(&context, op.primitivePortInfos)));
            })
            .Default([](Operation *) { });
        }
  });
  // llvm::errs() << "just walkin??? " << externs.size() << "\n";
  addexternstomodule(top, externs);
  // llvm::errs() << top << "\n";

  RewritePatternSet patterns(&ctxt);
  patterns.add<LUT6Lower>(&ctxt);
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

