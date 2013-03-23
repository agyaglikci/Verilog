`timescale 1ns / 1ps

module data_memory(
	input [15:0] address,
	input [15:0] write_data,
	input load,
	input clr,
	output [15:0] output_data
);	
	reg [15:0] memory [3:0];
	reg [5:0] i;
	
	always@ (load, clr) begin
		if(load)
			memory[address] = write_data;
		if(!clr) begin
			memory[0] = 1;
			memory[1] = 22;
			memory[2] = 5;
			memory[3] = 0;
		end
	end
	/*
	assign memory[0] = 1;
	assign memory[1] = 0;
	assign memory[2] = 0;
	assign memory[3] = 0;*/
	assign output_data = memory[address];
endmodule
