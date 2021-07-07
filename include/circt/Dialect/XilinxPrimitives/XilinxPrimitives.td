include "mlir/IR/OpBase.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/Interfaces/ControlFlowInterfaces.td"
include "mlir/IR/OpAsmInterface.td"
include "mlir/IR/SymbolInterfaces.td"
include "mlir/IR/RegionKindInterface.td"
include "mlir/Pass/PassBase.td"

def XilinxPrimitivesDialect : Dialect {
  let name = "xilinxPrimitives";

  let summary = "Types and operations for low-level Xilinx Primitives.";
  let description = [{
    This dialect defines the `comb` dialect, which is intended to be a generic
    representation of combinational logic outside of a particular use-case.
  }];
  let cppNamespace = "::circt::xilinxPrimitives";
}

class InOut<int width>
    : Type<And<[CPred<"$_self.isa<circt::hw::InOutType>()">,
                CPred<"$_self.cast<circt::hw::InOutType>().getElementType().isSignlessInteger(" # width # ")">
               ]>,
           width # "-bit signless integer of hw.inout",
           "circt::hw::InOutType">,
           BuildableType<"$_builder.getIntegerType(" # width # ")"> {
  int bitwidth = width;
}

class XilinxPrimitiveOp<string mnemonic, list<OpTrait> traits = []> :
    Op<XilinxPrimitivesDialect, mnemonic, traits>;


class APIntAttr<I attrValType> :
    SignlessIntegerAttrBase<attrValType, "APInt Attribute">
    { }

def LowerXilinxPrimitivesToHW: Pass<"lower-xilinx-primitives-to-hw", "mlir::ModuleOp"> {
  let summary = "Lower xilinx primitives ops to HW instantiations";
  let constructor = "circt::xilinxPrimitives::createXilinxPrimitivesLowerToHW()";
  let dependentDialects = ["circt::hw::HWDialect"];
}

include "circt/Dialect/XilinxPrimitives/XilinxRawPrimitives.td"
