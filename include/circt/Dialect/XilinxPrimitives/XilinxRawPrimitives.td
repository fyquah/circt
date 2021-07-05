def LUT6 : XilinxPrimitiveOp<"LUT6", []> {
  let summary = "LUT6 Xilinx Primitive.";

  let arguments = (ins
    // [input] and [inout] ports follows.
    I<1>:$I5,
    I<1>:$I4,
    I<1>:$I3,
    I<1>:$I2,
    I<1>:$I1,
    I<1>:$I0,
    InOut<1>:$A10,

    // LUT6 parameters follows
    APIntAttr<I<64>>:$INIT,
    SI64Attr:$BLA,
    F64Attr:$BLA2
  );

  let results = (outs
    I<1>:$O
  );
}
