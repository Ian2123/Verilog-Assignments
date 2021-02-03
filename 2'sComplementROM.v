// Homework 7 | 2's complement ROM
module rom(n1,n2,result);

input [3:0] n1, n2;
output wire [7:0] result;

wire [3:0] n1_mag, n2_mag;

reg [7:0] product;

assign n1_mag = n1[3] ? ~n1+1 : n1; //if msb is 1 (negative) then convert to positive.
assign n2_mag = n2[3] ? ~n2+1 : n2;

always @ (n1_mag or n2_mag) begin
	case({n1_mag,n2_mag})
		17: product = 1; //1*1
		18: product = 2; //1*2
		19: product = 3; //1*3
		20: product = 4;
		21: product = 5;
		22: product = 6;
		23: product = 7;
		24: product = 8; //1*8
	
		33: product = 2; //2*1
		34: product = 4; //2*2
		35: product = 6; //2*3
		36: product = 8;
		37: product = 10;
		38: product = 12;
		39: product = 14;
		40: product = 16; //2*8

		49: product = 3; //3*1
		50: product = 6; //3*2
		51: product = 9; //3*3
		52: product = 12;
		53: product = 15;
		54: product = 18;
		55: product = 21;
		56: product = 24; //3*8

		65: product = 4; //4*1
		66: product = 8; //4*2
		67: product = 12; //4*3
		68: product = 16;
		69: product = 20;
		70: product = 24;
		71: product = 28;
		72: product = 32; //4*8

		81: product = 5; //5*1
		82: product = 10;
		83: product = 15;
		84: product = 20;
		85: product = 25;
		86: product = 30;
		87: product = 35;
		88: product = 40; //5*8

		97: product = 6; //6*1
		98: product = 12;
		99: product = 18;
		100: product = 24;
		101: product = 30;
		102: product = 36;
		103: product = 42;
		104: product = 48; //6*8

		113: product = 7; //7*1
		114: product = 14;
		115: product = 21;
		116: product = 28;
		117: product = 35;
		118: product = 42;
		119: product = 49;
		120: product = 56; //7*8

		129: product = 8; //8*1
		130: product = 16; 
		131: product = 24;
		132: product = 32;
		133: product = 40;
		134: product = 48;
		135: product = 56;
		136: product = 64; //8*8
	
		default: product = 0;
	endcase
end

//if one of the inputs was negative, the product is negative.
assign result = n1[3]|n2[3] ? ~product+1 : product;

endmodule
