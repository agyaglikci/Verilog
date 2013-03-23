`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:54 11/18/2012
// Design Name:   instruction_memory
// Module Name:   C:/Users/Zulu/Xilinx/projects/ECE425Lab2/ECE425Lab2/pc_test.v
// Project Name:  ECE425Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instruction_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_test;

	// Inputs
	reg [15:0] PC;

	// Outputs
	wire [15:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	instruction_memory uut (
		.PC(PC), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		PC = 0;

		// Wait 100 ns for global reset to finish
		#1;
		PC=1;
		#1;
		PC=2;
		#1;
		PC=3;
		#1;
		PC=4;
		#1;
		PC=5;
        
		// Add stimulus here

	end
      
endmodule

