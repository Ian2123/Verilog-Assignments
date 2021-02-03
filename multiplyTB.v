`timescale 1ns/1ns
module multiplyTB();

reg [7:0] D;
wire [11:0] P11, P15;

multiply(.data(D), .product_11(P11), .product_15(P15));

initial begin
	$monitor("Data = %b = %d, Product_11 = %b = %d, Product_15 = %b = %d", D, D, P11, P11, P15, P15);
end

initial begin
	D = 0;
	#1 D = 1;
	#1 D = 2;
	#1 D = 3;
	#1 D = 4;
	#1 D = 5;
end
endmodule
