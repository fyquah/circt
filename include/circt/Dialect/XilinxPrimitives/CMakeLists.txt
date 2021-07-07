##===- CMakeLists.txt - MSFT dialect build definitions --------*- cmake -*-===//
##
## Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
## See https://llvm.org/LICENSE.txt for license information.
## SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
##
##===----------------------------------------------------------------------===//

add_circt_dialect(XilinxPrimitives xilinxPrimitives)
# add_circt_doc(Comb  -gen-dialect-doc Comb Dialects/)

set(LLVM_TARGET_DEFINITIONS XilinxPrimitives.td)
mlir_tablegen(XilinxPrimitivesEnums.h.inc -gen-enum-decls)
mlir_tablegen(XilinxPrimitivesEnums.cpp.inc -gen-enum-defs)
mlir_tablegen(XilinxPrimitivesPasses.h.inc -gen-pass-decls)
add_public_tablegen_target(MLIRXilinxPrimitivesEnumsIncGen)
