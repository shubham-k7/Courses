`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:28 06/05/2017 
// Design Name: 
// Module Name:    bits16add 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bits16add(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output cout
    );
	 wire [2:0]c;
FADDER FA1(.A(a[0]),.B(b[0]),.Cin(cin),.sum(sum[0]),.cout(c[0]));
FADDER FA2(.A(a[1]),.B(b[1]),.Cin(c[0]),.sum(sum[1]),.cout(c[1]));
FADDER FA3(.A(a[2]),.B(b[2]),.Cin(c[1]),.sum(sum[2]),.cout(c[2]));
FADDER FA4(.A(a[3]),.B(b[3]),.Cin(c[2]),.sum(sum[3]),.cout(cout));
endmodule
