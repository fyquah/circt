#ifndef CIRCT_DIALECT_XINLINXPRIMITIVES_XINLINXPRIMITIVESOPS_H
#define CIRCT_DIALECT_XINLINXPRIMITIVES_XINLINXPRIMITIVESOPS_H

// #include "circt/Dialect/Comb/CombDialect.h"
#include "circt/Support/LLVM.h"
#include "circt/Dialect/HW/HWOps.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/FunctionSupport.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"

#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesDialect.h"

#define GET_OP_CLASSES
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitives.h.inc"

#endif // CIRCT_DIALECT_XINLINXPRIMITIVES_XINLINXPRIMITIVESOPS_H

