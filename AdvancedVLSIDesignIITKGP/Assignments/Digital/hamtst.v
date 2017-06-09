`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:20:58 06/06/2017
// Design Name:   hammdist
// Module Name:   C:/Users/Owner/Desktop/New folder/SAXA/hamtst.v
// Project Name:  SAXA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hammdist
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hamtst;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg clock;
	reg rst;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	hammdist uut (
		.a(a), 
		.b(b), 
		.clock(clock), 
		.rst(rst), 
		.out(out)
	);
always #50 clock=~clock;
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		clock = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst=0;
        a =4'd2;
		b = 4'd6;
	
		// Wait 100 ns for global reset to finish
		#100;
		a = 4'd5;
		b = 4'd2;
		

		// Wait 100 ns for global reset to finish
		#100;
		a = 4'd2;
		b = 4'd1;
	
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

