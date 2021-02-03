`timescale 1ns/1ns
module ff(Reset_n, CLK, DATA, SELECT, DATA_OUT);

input Reset_n, CLK, DATA, SELECT;
output reg DATA_OUT;

wire D;
assign D = SELECT ? DATA : DATA_OUT;

always @ (posedge CLK, negedge Reset_n) begin //Reset_n is asynchronous if in sensitivity list.
	if (Reset_n == 0) DATA_OUT <= 0;
	else DATA_OUT <= D;
end
endmodule
