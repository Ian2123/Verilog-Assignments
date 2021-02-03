// Question 1 | 2:1 Multiplexer realized using gate-level modeling.
`timescale 1ns/1ps
module mux2_1(SEL, A, B, OUT);
input SEL, A, B;
wire sel_not, and_1, and_2;
output OUT;

not(sel_not, SEL);
and(and_1, A, sel_not);
and(and_2, B, SEL);
or(OUT, and_1, and_2);

endmodule
