`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:53:54 10/14/2012
// Design Name:   ALU
// Module Name:   C:/Users/Tiffany/chrislz/ECE425Lab2/test.v
// Project Name:  ECE425Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [15:0] rs;
	reg [15:0] rt;
	reg [3:0] op;

	// Outputs
	wire [15:0] rd;
	wire bne;
	wire ov;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.rs(rs), 
		.rt(rt), 
		.op(op), 
		.rd(rd), 
		.bne(bne), 
		.ov(ov)
	);

	initial begin
		// Initialize Inputs
		rs = 0;
		rt = 0;
		op = 0;
        
		// Add stimulus here
		#1;
		rs = 16'b0000000011111111;
		rt = 16'b0000000000001111;
		op = 2;
		#5;
		op = 6;
		#5;
		op = 0;
		#5;
		op = 1;
		#5;
		op = 7;
		#5;
		rs = 16'b0000000000001111;
		rt = 16'b0000000011111111;
		#5;
		
		

	end
      
endmodule

