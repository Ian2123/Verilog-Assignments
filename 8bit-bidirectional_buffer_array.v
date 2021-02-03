// Question 2 part b | 8-bit bidirectional buffer array
`timescale 1ns/1ns
module Q2b(a[0:7], b[0:7], ce, sr);
input [0:7]a;
input ce, sr;
output [0:7]b;
wire en1, en2;

and(en1, sr, ce);
and(en2, ~sr, ce);

bufif1(a[0], b[0], en2);
bufif1(b[0], a[0], en1);

bufif1(a[1], b[1], en2);
bufif1(b[1], a[1], en1);

bufif1(a[2], b[2], en2);
bufif1(b[2], a[2], en1);

bufif1(a[3], b[3], en2);
bufif1(b[3], a[3], en1);

bufif1(a[4], b[4], en2);
bufif1(b[4], a[4], en1);

bufif1(a[5], b[5], en2);
bufif1(b[5], a[5], en1);

bufif1(a[6], b[6], en2);
bufif1(b[6], a[6], en1);

bufif1(a[7], b[7], en2);
bufif1(b[7], a[7], en1);
endmodule
