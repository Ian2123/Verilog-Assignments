// Homework 6 - Question 2 | Testbench
`timescale 1ns/1ns
module Q2TB();

reg X, RESET, CLK;
wire Z;

Q2 (.x(X), .clk(CLK), .reset_n(RESET), .z(Z));

initial begin
	CLK = 0;
	forever CLK = #2 ~CLK;
end

initial begin
	RESET = 0;
	X = 0;
	#1 RESET = 1; //1st posedge: S1 -> S0 | Z = 1
	#4 X = 0;     //2nd posedge: S0 -> S0 | Z = 0
	#4 X = 1;     //3rd posedge: S0 -> S0 | Z = 1
	#4 RESET = 0; //4th posedge: S0 -> S1 | Z = 0
	#2 RESET = 1; //Change reset between clocks
	#2 X = 1;     //5th posedge: S1 -> S2 | Z = 1
	#4 X = 0;     //6th posedge: S2 -> S1 | Z = 0
	#4 X = 1;     //7th posedge: S1 -> S2 | Z = 1
	#4 X = 1;     //8th posedge: S2 -> S3 | Z = 1
	#4 X = 1;     //9th posedge: S3 -> S3 | Z = 1
	#4 X = 0;     //10th posedge: S3 -> S3 | Z = 1
end
endmodule 
