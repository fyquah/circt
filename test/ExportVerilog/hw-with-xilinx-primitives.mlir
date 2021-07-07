
hw.module @Foo(%a: i1) -> (%o: i1) {
  %1 = xilinxPrimitives.LUT6 %a, %a, %a, %a, %a, %a { INIT=0x0 } : i1
  hw.output %1 : i1
}

