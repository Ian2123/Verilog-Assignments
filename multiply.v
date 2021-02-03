// Homework 5 - Question 1 | Multiply input 'data' by 11 and 15 respectively, using shift operation.
`timescale 1ns/1ns
module multiply(data, product_11, product_15);

input [7:0] data;
output wire [11:0] product_11, product_15;

// 8*data + 2*data + data
assign product_11 = (data << 3) + (data << 1) + data;

// 8*data + 4*data + 2*data + data
assign product_15 = (data << 3) + (data << 2) + (data << 1) + data;

endmodule
