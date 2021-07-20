#ifndef CIRCT_DIALECT_COMB_COMBPASSES_H
#define CIRCT_DIALECT_COMB_COMBPASSES_H

#include "circt/Dialect/HW/HWDialect.h"
#include "circt/Dialect/HW/HWOps.h"
#include "mlir/Pass/Pass.h"

namespace circt {
namespace comb {

#define GEN_PASS_CLASSES
#include "circt/Dialect/Comb/CombPasses.h.inc"

std::unique_ptr<OperationPass<hw::HWModuleOp>> createDemandedBitsPrinterPass();
void registerCombPasses();

} // namespace comb
} // namespace circt

#endif // CIRCT_DIALECT_COMB_COMBPASSES_H
