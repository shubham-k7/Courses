`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:46:27 06/06/2017
// Design Name:   accumulator
// Module Name:   C:/Users/Owner/Desktop/New folder/SAXA/testacc.v
// Project Name:  SAXA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: accumulator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testacc;

	// Inputs
	reg [3:0] a;
	reg clk;
	reg reset;

	// Outputs
	wire c;
	wire [15:0] sum1;

	// Instantiate the Unit Under Test (UUT)
	accumulator uut (
		.a(a), 
		.clk(clk), 
		.reset(reset), 
		.c(c), 
		.sum(sum1)
	);
always #50 clk=~clk;
		
		
	initial begin
		// Initialize Inputs
		a = 0;
		clk = 0;
		reset = 1;
#100
		
		
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here
		reset=0;
		a=4'd10;
		#100
		a=4'd2;
		#100
		a=4'd4;
		#100
		a=4'd6;
		#100
		a=4'd8;
		#100
		a=4'd2;

	end
	
      
endmodule

