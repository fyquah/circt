// This analysis is largely influenced by llvm/lib/Analysis/DemandedBits.cpp.
// The key difference is that we operate on structs and union alike, not just
// IntegerTypes, since struct and union are simply packed integers.

#include "circt/Dialect/Comb/DemandedBits.h"
#include "circt/Dialect/Comb/CombPasses.h"
#include "circt/Dialect/HW/HWDialect.h"
#include "circt/Dialect/HW/HWOps.h"
#include "circt/Dialect/HW/HWTypes.h"
#include "llvm/ADT/TypeSwitch.h"

using namespace circt;
using namespace comb;
using WorkList = llvm::SmallSetVector<Operation *, 16>;

static WorkList getInitialWorkList(::circt::hw::HWModuleOp rootModule,
                                   DenseMap<Operation *, APInt> &aliveBits) {
  WorkList workList;

  for (auto &operationInBlock : rootModule.getBodyBlock()->getOperations()) {
    llvm::TypeSwitch<Operation *, void>(&operationInBlock)
        // For operations that we do recognize, we want to add them to the
        // workList. But we set aliveBits zero only if it is not present already
        // present in the map. If it was already set, it could have been set by
        // all 1s in the DefaultValue case.
        .Case<AddOp>([&](AddOp addOp) {
          unsigned numBits = circt::hw::getBitWidth(addOp.getType());
          if (aliveBits.try_emplace(&operationInBlock, numBits, 0).second) {
            workList.insert(&operationInBlock);
          }
        })
        // For a op we we don't handle, we need to assume that all its operands
        // are live, and set them as a ones mask in aliveBits. The operands
        .Default([&](Operation *op) {
          for (auto operand : op->getOperands()) {
            auto *definingOp = operand.getDefiningOp();
            int64_t bitWidth = circt::hw::getBitWidth(operand.getType());

            if (bitWidth == -1)
              continue;

            aliveBits[definingOp] = APInt::getAllOnesValue(bitWidth);
            workList.insert(definingOp);
            continue;
          }
        });
  }

  return workList;
}

void DemandedBits::performAnalysis() {
  DenseMap<Operation *, APInt> aliveBits;
  WorkList workList = getInitialWorkList(rootModule, aliveBits);
}
