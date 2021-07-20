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
      : analyzed(false), aliveBits(), rootModule(rootModule) {}

  /// Get the mask of live bits from the given operation. For bits where
  /// analysis has not been performed, simply returns a mask filled with ones.
  /// Returns None if the provided value is unsynthesizable.
  llvm::Optional<APInt> getDemandedBits(Value);

  /// Print DemandedBits analysis output to specified OS.
  void print(raw_ostream &);

private:
  bool analyzed;
  DenseMap<Value, APInt> aliveBits;
  ::circt::hw::HWModuleOp rootModule;

  void performAnalysis();
};

} // namespace comb
} // namespace circt

#endif // CIRCT_DIALECT_COMB_ANALYSIS_DEMANDED_BITS_H
