#ifndef CIRCT_DIALECT_COMB_ANALYSIS_DEMANDED_BITS_H
#define CIRCT_DIALECT_COMB_ANALYSIS_DEMANDED_BITS_H

#include "circt/Dialect/Comb/CombDialect.h"
#include "circt/Dialect/Comb/CombOps.h"
#include "circt/Dialect/HW/HWOps.h"

namespace circt {
namespace comb {

class DemandedBits {
public:
  DemandedBits(::circt::hw::HWModuleOp rootModule)
      : aliveBits(), rootModule(rootModule) {}

  /// Get the mask of live bits from the given operation. For bits where
  /// analysis has not been performed, simply returns a mask filled with ones.
  APInt getDemandedBits(Operation *op);

private:
  bool hasRunAnalysis;
  DenseMap<Operation *, APInt> aliveBits;
  ::circt::hw::HWModuleOp rootModule;

  void performAnalysis();
};

} // namespace comb
} // namespace circt

#endif // CIRCT_DIALECT_COMB_ANALYSIS_DEMANDED_BITS_H
