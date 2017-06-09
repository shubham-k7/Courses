`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:09 06/06/2017 
// Design Name: 
// Module Name:    accumulator 
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
module accumulator(
    input [3:0] a,
    input clk,
    input reset,
	 
	 output c,
    output [15:0]sum
    );
wire [15:0]s1;
wire [15:0] ain;
reg [15:0]sum1;
assign ain[15:0]={12'b000000000000,a};
bit16fa fq(.a(ain), .b(sum1), .cin(0), .Cout(c), .s(s1));

always @(posedge clk)
begin
if(reset)
 sum1<=0;
 else 
 sum1<=s1;
 end
assign sum=sum1;

endmodule
