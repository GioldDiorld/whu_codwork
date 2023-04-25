
module EXT( Imm16, EXTOp, Imm32 );

   input  [15:0] Imm16;
   input  [1:0]  EXTOp;
   output [31:0] Imm32;

   assign Imm32 = (EXTOp[0]) ?
    {{16{Imm16[15]}}, Imm16} :
    ((EXTOp[1]) ? {Imm16, 16'b0}:{16'b0, Imm16}); // signed-extension or zero extension

endmodule
