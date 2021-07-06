#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesDialect.h"
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesOps.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"

void circt::xilinxPrimitives::XilinxPrimitivesDialect::initialize() {
  // Register operations.
  addOperations<
#define GET_OP_LIST
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitives.cpp.inc"
      >();
}

// Provide implementations for the enums we use.
#include "circt/Dialect/XilinxPrimitives/XilinxPrimitives.cpp.inc"

#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesEnums.cpp.inc"

#include "circt/Dialect/XilinxPrimitives/XilinxPrimitivesDialect.cpp.inc"

