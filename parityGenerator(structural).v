// Question 4 | Parity generator realized using gate-level modeling
`timescale 1ns/1ns
module Q4(I[0:7], OP);
input [0:7]I;
output OP;
wire xor1_out, xor2_out, xor3_out, xor4_out, xor5_out, xor6_out;

xor(xor1_out, I[0], I[1]);
xor(xor2_out, I[2], I[3]);
xor(xor3_out, I[4], I[5]);
xor(xor4_out, I[6], I[7]);

xor(xor5_out, xor1_out, xor2_out);
xor(xor6_out, xor3_out, xor4_out);

xnor(OP, xor5_out, xor6_out);
endmodule
