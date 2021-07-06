See [circt/include/circt/Dialect/XilinxPrimitives](circt/include/circt/Dialect/XilinxPrimitives)
for the end result.

How does it work:

1. Concatenate all the files in [https://github.com/Xilinx/XilinxUnisimLibrary](verilog/src/)
2. Run some hacky preprocessing to remove `ifdef and most of the implementation
3. Compile the partial verilog parser in [circt/include/circt/Dialect/XilinxPrimitives/Generator]()
4. Run it through the file to generate a tablegen!

Some real problems:

1. The libXilinxPrimitive.a static library is 65MB (at least in debug mode), compared to the median
   <2MB in the rest of CIRCT
2. Do we really want a verilog parser in here?

While xilinx provides a nicer file than what we do in step 1 and 2

