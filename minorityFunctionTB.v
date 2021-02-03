// Question 3 | Testbench
`timescale 1ns/1ns
module Q3TB();
reg [0:2]i;
wire out;

Q3 minority_function(.I(i), .OUT(out));

initial begin
   i = 3'b001;
   #2
   $display("I=%b OUT=%b", i, out);
   i = 3'b110;
   #2
   $display("I=%b OUT=%b", i, out);
   i = 3'b100;
   #2
   $display("I=%b OUT=%b", i, out);
end
endmodule
