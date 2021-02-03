// Homework 6 - Question 1 | Testbench
`timescale 1ns/1ns
module Q1TB();

reg W, RESET, CLK;
wire Z;

Q1 (.w(W), .clk(CLK), .reset_n(RESET), .z(Z));

initial begin
	CLK = 0;
	forever CLK = #2 ~CLK;
end

initial begin
	RESET = 0;
   W = 0; 
	#1 RESET = 1; //1st posedge: A -> B | Z = 0
	#4 W = 0; //2nd posedge: B -> B | Z = 1
	#4 W = 1; //3rd posedge: B -> C | z = 0
	#4 W = 1; //4th posedge: C -> C | z = 1
	#4 RESET = 0; //5th posedge: C -> A, then A -> C 
	#1 RESET = 1;
end
endmodule 
