// This needs to be generated from the pass ... somehow..
hw.module.extern @LUT6(%I0: i1, %I1: i1, %I2: i1, %I3: i1, %I4: i1, %I5: i1) -> (%O: i1)

hw.module @Foo(%a: i1) -> (%o: i1) {
  %1 = xilinxPrimitives.LUT6 %a, %a, %a, %a, %a, %a { INIT=0x0 } : i1
  hw.output %1 : i1
}

