#include "circt/Dialect/Comb/CombPasses.h"

namespace {

#define GEN_PASS_REGISTRATION
#include "circt/Dialect/Comb/CombPasses.h.inc"

} // namespace

void circt::comb::registerCombPasses()
{
  registerPasses();
}

