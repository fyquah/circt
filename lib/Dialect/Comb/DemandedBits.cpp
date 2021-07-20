// This analysis is largely influenced by llvm/lib/Analysis/DemandedBits.cpp.
// The key difference is that we operate on structs and union alike, not just
// IntegerTypes, since struct and union are simply packed integers. That said,
// we still need to account for Operations that we cannot handle, and treat all
// the operands as live.

#include "circt/Dialect/Comb/DemandedBits.h"
#include "circt/Dialect/Comb/CombPasses.h"
#include "circt/Dialect/HW/HWDialect.h"
#include "circt/Dialect/HW/HWOps.h"
#include "circt/Dialect/HW/HWTypes.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/Debug.h"

using namespace circt;
using namespace comb;
using WorkList = llvm::SmallSetVector<Operation *, 16>;

/// Returns true on operations that potentially have side effects.
/// Defaults to returning true on all operations.
static bool
isAlwaysLive(Operation *op)
{
  return llvm::TypeSwitch<Operation*, bool>(op)
    .Case<AddOp>([](auto unused) { (void) unused; return false; })
    .Default([](auto unused) { (void) unused; return true; });
}

static WorkList getInitialWorkList(::circt::hw::HWModuleOp rootModule) {
  WorkList workList;

  for (auto &operationInBlock : rootModule.getBodyBlock()->getOperations()) {
    if (!isAlwaysLive(&operationInBlock))
      continue;

    workList.insert(&operationInBlock);
  }

  return workList;
}

llvm::Optional<APInt> DemandedBits::getDemandedBits(Value value)
{
  performAnalysis();

  auto found = aliveBits.find(value);
  if (found != aliveBits.end()) {
    return found->second;
  }

  int64_t bitwidth = circt::hw::getBitWidth(value.getType());
  if (bitwidth == -1) {
    return None;
  }

  return Optional<APInt>(APInt::getAllOnesValue(bitwidth));
}

void DemandedBits::print(raw_ostream &os) {
  auto printDemandedBits = [&](Value value, const APInt bits) {
    os << "DemandedBits: 0x" << Twine::utohexstr(bits.getLimitedValue()) << " for " << value << '\n';
  };

  os << "Demanded Bits analysis for module: " << rootModule.getName() << ":\n";
  performAnalysis();
  for (auto &kv : aliveBits)
    printDemandedBits(kv.first, kv.second);
}

void DemandedBits::performAnalysis() {
  if (analyzed) {
    return;
  }
  analyzed = true;

  WorkList workList = getInitialWorkList(rootModule);
  DenseSet<Operation *> visitedOps;

  while (!workList.empty()) {
    Operation *rootOp = workList.pop_back_val();
    auto operands = rootOp->getOperands();
    SmallVector<APInt, 4> operationResultsLiveBits;

    for (size_t operandIndex = 0; operandIndex < operands.size() ; operandIndex++) {
      auto operand = operands[operandIndex];
      int64_t operandBitWidth = circt::hw::getBitWidth(operand.getType());

      // For operands with unkown widths (ie: non-synthesizable type), add them
      // to the worklist for further traversal.
      if (operandBitWidth == -1) {
        if (auto* definingOp = operand.getDefiningOp()) {
          if (visitedOps.insert(definingOp).second) {
            workList.insert(definingOp);
          }
        }
        continue;
      }

      assert (operandBitWidth > 0 && "operandBitWidth must be either -1, or > 0");

      APInt operandLiveBits =
        TypeSwitch<Operation*, APInt>(rootOp)
        .Case<AddOp>([&](AddOp rootAddOp){
            auto resultLiveBits = operationResultsLiveBits[0];
            if (resultLiveBits.isMask())
              return APInt(resultLiveBits);

            size_t trailingZeros = resultLiveBits.countTrailingZeros();
            size_t trailingBitsThatMatter = operandBitWidth - trailingZeros;
            return APInt::getLowBitsSet(operandBitWidth, trailingBitsThatMatter);
         })
        .Default([&](auto unused) {
            return APInt::getAllOnesValue(operandBitWidth);
            });

      if (OpResult operandDefiningOpResult = operand.dyn_cast<OpResult>()) {
        auto insertResult = aliveBits.insert({operandDefiningOpResult, operandLiveBits});
        auto hasLiveBitsInOperandIncreased = [&]() {
          if (insertResult.second)
            return true;

          operandLiveBits |= insertResult.first->second;
          return (insertResult.first->second != operandLiveBits);
        };

        if (hasLiveBitsInOperandIncreased()) {
          insertResult.first->second = std::move(operandLiveBits);
          workList.insert(operandDefiningOpResult.getOwner());
        }
      }
    }
  }
}
namespace {

class DemandedBitsPrinterPass : public circt::comb::DemandedBitsPrinterBase<DemandedBitsPrinterPass> {
public:
  DemandedBitsPrinterPass(raw_ostream &os) : os(os) {}
  void runOnOperation() override;
private:
  raw_ostream &os;
};

} // namespace

void DemandedBitsPrinterPass::runOnOperation() {
  this->getAnalysis<DemandedBits>().print(os);
}

namespace circt {
namespace comb {

std::unique_ptr<OperationPass<hw::HWModuleOp>> createDemandedBitsPrinterPass() {
  return std::make_unique<DemandedBitsPrinterPass>(llvm::dbgs());
}

} // namespace comb
} // namespace circt

