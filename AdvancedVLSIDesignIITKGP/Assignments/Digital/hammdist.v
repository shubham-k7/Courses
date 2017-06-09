`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:57 06/06/2017 
// Design Name: 
// Module Name:    hammdist 
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
module hammdist(
    input [3:0] a,b,
	 input clock, rst,
    output [15:0] out
    );
	 wire [3:0]sout;
	 wire q;
	 wire c1;
bits16add f0(.a(a), .b(-b) ,.cin(0) , .sum(sout), .cout(q));
wire [3:0]sabs;
assign sabs = (q) ? sout : -sout;
accumulator qwerty(.a(sabs),.clk(clock),.reset(rst),.c(c1),.sum(out));

endmodule
