// Question 4 | Testbench
`timescale 1ns/1ns
module Q4TB();
reg [0:7]i;
wire op;

Q4 parity(.I(i), .OP(op));

initial begin
   i = 8'b01111000;
   #2
   $display("I=%b, OP=%b", i, op);
   i = 8'b01111001;
   #2
   $display("I=%b, OP=%b", i, op);
end
endmodule
