// Homework 6 - Question 1 | Sequence Detector FSM
`timescale 1ns/1ns
module Q1(w, clk, reset_n, z);

input w, clk, reset_n;
output reg z;

reg [2:1] y;
parameter [2:1] A = 2'b00, B = 2'b01, C = 2'b11;

always @ (posedge clk, negedge reset_n) begin
	if(reset_n == 0) begin y <= A; z = 0; end
	else
		case(y)
			A: if(w) begin y = C; z = 0; end
				else  begin y = B; z = 0; end
			B: if(w) begin y = C; z = 0; end
				else  begin y = B; z = 1; end
			C: if(w) begin y = C; z = 1; end
				else  begin y = B; z = 0; end
			default: begin y = 2'bxx; z = 0; end
		endcase
end
endmodule
