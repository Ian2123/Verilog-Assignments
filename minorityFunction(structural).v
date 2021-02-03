// Question 3 | Minority function realized using gate-level modeling
`timescale 1ns/1ns
module Q3(I[0:2], OUT);
input [0:2]I;
output OUT;
wire nand1_out, nand2_out, nand3_out;

nand(nand1_out, I[0], I[1]);
nand(nand2_out, I[1], I[2]);
nand(nand3_out, I[0], I[2]);
and(OUT, nand1_out, nand2_out, nand3_out);
endmodule
