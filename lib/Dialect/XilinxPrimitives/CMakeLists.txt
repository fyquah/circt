file(GLOB globbed *.cpp)
add_circt_dialect_library(CIRCTXilinxPrimitives
  ${globbed}

  ADDITIONAL_HEADER_DIRS
  ${CIRCT_MAIN_INCLUDE_DIR}/circt/Dialect/XilinxPrimitives

  DEPENDS
  MLIRXilinxPrimitivesIncGen
  MLIRXilinxPrimitivesEnumsIncGen
  
  LINK_COMPONENTS
  Support

  LINK_LIBS PUBLIC
  MLIRIR
   )

add_dependencies(circt-headers MLIRXilinxPrimitivesIncGen MLIRXilinxPrimitivesEnumsIncGen)
