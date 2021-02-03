//2:1 Multiplexer realized using data-flow modeling.
`timescale 1ns/1ps
module mux2_1(SEL, A, B, OUT);
input SEL, A, B;
output OUT;

assign OUT = SEL? B : A;
endmodule
