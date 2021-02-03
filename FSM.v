// Homework 6 - Question 2 | FSM

`timescale 1ns/1ns
module Q2(x, clk, reset_n, z);

input x, clk, reset_n;
output reg z;

reg [1:0] y;

// S0 = 2'bAB, S1 = 2'bAB, etc...
parameter [1:0] S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

always @ (posedge clk, negedge reset_n) begin
	if(reset_n == 0) begin y <= S1; z = 0; end
	else
		case(y)
			S0: if(x) begin y = S0; z = 1; end
			 	 else  begin y = S0; z = 0; end
			S1: if(x) begin y = S2; z = 1; end
		    	 else  begin y = S0; z = 1; end
			S2: if(x) begin y = S3; z = 1; end
			 	 else  begin y = S1; z = 0; end
			S3: begin y = S3; z = 1; end
			default: begin y = 2'bxx; z = 0; end
		endcase
end
endmodule
