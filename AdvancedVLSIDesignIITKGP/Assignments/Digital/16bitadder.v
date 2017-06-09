`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:40 06/05/2017 
// Design Name: 
// Module Name:    bit16fa 
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
module bit16fa(
    input [15:0]a,b, 
	 input cin,
    output Cout,
    output [15:0]s
   );
	
wire [14:0]c;
FADDER f1(.A(a[0]),.B(b[0]),.Cin(cin),.sum(s[0]),.cout(c[0]));
genvar i;
generate 
for(i=1;i<15;i=i+1)
begin : m
FADDER f(.A(a[i]),.B(b[i]),.Cin(c[i-1]),.sum(s[i]),.cout(c[i]));
end 
endgenerate

FADDER f2(.A(a[15]),.B(b[15]),.Cin(c[14]),.sum(s[15]),.cout(Cout));
endmodule
