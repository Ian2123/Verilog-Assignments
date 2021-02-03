//2:1 Multiplexer realized using behavioral modeling.
`timescale 1ns/1ps
module mux2_1(SEL, A, B, OUT);
input SEL, A, B;
output OUT;
reg OUT;

always @(SEL or A or B) 
begin
   if(SEL) 
      OUT = B;
   else 
      OUT = A;
end
endmodule
