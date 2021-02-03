//Testbench for Question 1, part a.
`timescale 1ns/1ps
module gate_muxTB();
reg sel, a, b;
wire out;

mux2_1 mux(.SEL(sel), .A(a), .B(b), .OUT(out));

initial begin
   $display("Question 1, Part a-c Simulation");
   sel = 1'b0;
   a = 1'b0;
   b = 1'b1;
   #5
   $display("SEL=%d, A=%d, B=%d, OUT=%d", sel, a, b, out);
   a = 1'b1;
   #5
   $display("SEL=%d, A=%d, B=%d, OUT=%d", sel, a, b, out);  
   sel = 1'b1;
   #5
   $display("SEL=%d, A=%d, B=%d, OUT=%d", sel, a, b, out);
   b = 1'b0;
   #5
   $display("SEL=%d, A=%d, B=%d, OUT=%d", sel, a, b, out);
end
endmodule
