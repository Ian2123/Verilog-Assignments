// Homework 7 | Testbench
module romTB();

reg signed[3:0] n1, n2;
wire signed[7:0] result;

rom(.n1(n1), .n2(n2), .result(result));

initial begin: apply_stimulus
	reg[3:0] i, j;
	integer num1;
	for(i=1; i<=7; i=i+1) begin
		n1 = i;
		for(j=0; j<=8; j=j+1) begin
			n2 = j;
		   #1 $display("N1 = %d N2 = %d Result = %d", n1, n2, result);
		end
	end
end
endmodule
