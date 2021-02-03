// Question 2 part b | Testbench
`timescale 1ns/1ns
module Q2bTB();
reg [0:7]A;
reg SR, CE;
wire [0:7]B;

Q2b(.a(A), .b(B), .ce(CE), .sr(SR));

initial begin
   A = 8'b11000011;
   SR = 1'b1;
   CE = 1'b1;
   #2
   SR = 1'b0;
   #2
   CE = 1'b0;
   #2
   SR = 1'b1;
end

endmodule
