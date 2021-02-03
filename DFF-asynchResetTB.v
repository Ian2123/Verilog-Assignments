`timescale 1ns/1ns
module ffTB();

reg clk, reset_n, data, sel;
wire data_out;

ff Q1(.Reset_n(reset_n), .CLK(clk), .DATA(data), .SELECT(sel), .DATA_OUT(data_out));

initial begin 
	clk = 1;
	forever #5 clk = ~clk;
end

initial begin
	reset_n = 1;
	data = 1;
	sel = 0;
   #1 sel = 1;
	#9
	data = 0;
	#10
	sel = 0;
	#10
	sel = 1;
	data = 1;
	#10
	reset_n = 0;
end
endmodule
