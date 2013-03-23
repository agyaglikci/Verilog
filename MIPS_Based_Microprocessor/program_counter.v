`timescale 1ns / 1ps

module program_counter(
	input clk,
	input [15:0] pc_in,	
	input clr,
	output reg [15:0] pc_out
);
	initial begin
		pc_out = 0;
	end
	
	always@ (posedge clk) begin
		if(clr)
			pc_out = 0;
		else
			pc_out = pc_in;
	end
endmodule
