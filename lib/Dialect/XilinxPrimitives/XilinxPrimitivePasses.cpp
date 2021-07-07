#include "circt/Dialect/HW/HWOps.h"
#include "circt/Dialect/SV/SVOps.h"
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesDialect.h"
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesOps.h"
#include "circt/Dialect/HW/HWDialect.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/DialectConversion.h"

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
    auto instanceName = StringAttr::get(context, "");
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
void XilinxPrimitivesToHWPass::runOnOperation() {
  ModuleOp top = getOperation();
  MLIRContext &ctxt = getContext();

  ConversionTarget target(ctxt);
  target.addIllegalDialect<xilinxPrimitives::XilinxPrimitivesDialect>();
  target.addLegalDialect<circt::hw::HWDialect>();
  RewritePatternSet patterns(&ctxt);
  patterns.add<LUT6Lower>(&ctxt);
  top.walk([&]() {});

  top.walk([&](Operation *nestedOp) {
      if (nestedOp->getDialect()->getNamespace() == "xilinxPrimitives") {
        auto name = nestedOp->getName();
      }
      });

  if (failed(applyPartialConversion(top, target, std::move(patterns))))
    signalPassFailure();
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

