`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:20:19 06/05/2017
// Design Name:   FADDER
// Module Name:   C:/Users/Owner/Desktop/New folder/SAXA/testfa.v
// Project Name:  SAXA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FADDER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testfa;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	FADDER uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      A = 0;
		B = 1;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		A = 1;
		B = 1;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		A = 1;
		B = 1;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 1;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
	end
      
endmodule

