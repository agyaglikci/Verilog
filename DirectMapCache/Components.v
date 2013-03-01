`timescale 1ns / 1ps

module Components(
);
endmodule

module MainMemory(
	input [11:0] address,
	input [31:0] data_in,
	input write,
	input clk,
	output reg [31:0] data_out
);
	reg [31:0] Memory[11:0];
	initial begin
		Memory[0] = 0;
		Memory[1] = 1;
		Memory[2] = 2;
		Memory[3] = 3;
		Memory[4] = 0;
		Memory[5] = 0;
		Memory[6] = 0;
		Memory[7] = 0;
	end
	always@(posedge clk) begin
		if(write) begin
			Memory [address] = data_in;
		end
		data_out = Memory[address];
	end
endmodule

module two_to_one_mux_32bit(
	input [31:0] in0,
	input [31:0] in1,
	input s,
	output reg [31:0] out
);
	always@(s, in0, in1) begin
		if(s)
			out = in1;
		else
			out = in0;
	end
endmodule

module comparator_9bit(
	input [8:0] in0,
	input [8:0] in1,
	output reg out
);
	always@(in0, in1) begin
		if(in0 == in1)
			out = 1;
		else
			out = 0;
	end
endmodule

module Cache(
	input [2:0] index,
	input write,
	input [31:0] data_in,
	input [8:0] tag_in,
	input clk,
	output reg valid,
	output reg [8:0] tag_out,
	output reg [31:0] data_out
);
	reg [41:0] cache_memory [3:0];
	initial begin
		cache_memory [0] = 42'h20000000000;
		cache_memory [1] = 42'h20000000001;
		cache_memory [2] = 42'h20000000002;
		cache_memory [3] = 42'h00000000005;
		cache_memory [4] = 0;
		cache_memory [5] = 0;
		cache_memory [6] = 0;
		cache_memory [7] = 0;
	end
	always@(index) begin
		data_out = cache_memory [index] [31:0];
		tag_out = cache_memory [index] [40:32];
		valid = cache_memory [index] [41];
	end
	always@(posedge clk) begin
		if(write) begin
			cache_memory [index] [31:0] = data_in;
			cache_memory [index] [40:32] = tag_in;
			cache_memory [index] [41] = 1;
		end
	end
endmodule
		
