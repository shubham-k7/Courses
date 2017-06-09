`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:56 06/05/2017 
// Design Name: 
// Module Name:    FADDER 
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
module FADDER(
    input A,B,Cin,
    output sum , cout
    );
	 /*wire n0, n1, n2;
	 and and0(n0, A, B);
	 and and1(n1, B, Cin);
	 and and2(n2, Cin, A);
	 
	 wire y0;
	 or or0(y0, n0, n1);
	 or or1(cout, y0, n2);
	 
	 xor X1(sum, A, B, Cin); */
	 
	assign sum=A^B^Cin;
	assign cout= (A&B)|(B&Cin)|(Cin&A);
endmodule
