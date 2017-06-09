`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:53:36 06/06/2017
// Design Name:   bit16fa
// Module Name:   C:/Users/Owner/Desktop/New folder/SAXA/test16bit.v
// Project Name:  SAXA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit16fa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test16bit;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire Cout;
	wire [15:0] s;

	// Instantiate the Unit Under Test (UUT)
	bit16fa uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.Cout(Cout), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 16'd23;
		b = 16'd72;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  a = 16'd83;
		b = 16'd90;
		cin = 0;
		#100
		a = 16'd23;
		b = 16'd100;
		cin = 0;
	#100
	a = 16'd100;
		b = 16'd72;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 16'd23;
		b = 16'd22;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

