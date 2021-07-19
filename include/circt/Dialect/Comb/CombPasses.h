#ifndef CIRCT_DIALECT_COMB_COMBPASSES_H
#define CIRCT_DIALECT_COMB_COMBPASSES_H

#include "circt/Dialect/HW/HWDialect.h"
#include "circt/Dialect/HW/HWOps.h"
#include "mlir/Pass/Pass.h"

#define GEN_PASS_CLASSES
#include "circt/Dialect/Comb/CombPasses.h.inc"

namespace circt {
namespace comb {

void registerDemandedBitsPass();

} // namespace comb
} // namespace circt

#endif // CIRCT_DIALECT_COMB_COMBPASSES_H
