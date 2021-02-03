// Question 5 | min SOP realized using gate-level modeling
`timescale 1ns/1ns
module Q5(A,B,C,D,OUT);
input A,B,C,D;
output OUT;
wire and1_out, and2_out, and3_out, and4_out;

//E(0,2,4,6,9,10,13,15) -> OUT = ~A*~B + ~B*C*~D + A*B*D + A*~C*D using K-map

and(and1_out, ~A, ~B);
and(and2_out, ~B, C, ~D);
and(and3_out, A, B, D);
and(and4_out, A, ~C, D);
or(OUT, and1_out, and2_out, and3_out, and4_out);
endmodule
