// Question 5 | Testbench
`timescale 1ns/1ns
module Q5TB();
reg a,b,c,d;
wire out;

Q5 circuit(.A(a), .B(b), .C(c), .D(d), .OUT(out));

initial begin
   a = 1'b1;
   b = 1'b1;
   c = 1'b1;
   d = 1'b1;
   #2
   $display("A=%d B=%d C=%d D=%d OUT=%d", a, b, c, d, out);
   d = 1'b0;
   #2
   $display("A=%d B=%d C=%d D=%d OUT=%d", a, b, c, d, out);   
end
endmodule
