`timescale 1ns / 1ps

module DirectMapCache(
	input [11:0] address,
	input [31:0] data,
	input r_or_w, //read is 0, write is 1
	input clk,
	output [31:0] out
);

wire [31:0] memory_out;
wire [31:0] cache_out;
wire valid;
wire [8:0] tag;
wire tag_equal;
wire cache_write;
wire nhit;

MainMemory MainMemory0 (address, data, r_or_w, clk, memory_out);
Cache Cache0 (address[2:0], cache_write, memory_out, address[11:3], clk, valid, tag, cache_out);
comparator_9bit comparator_9bit0 (address[11:3], tag, tag_equal);
and(hit, tag_equal, valid);
not(nhit, hit);
or(cache_write, nhit, r_or_w);
two_to_one_mux_32bit two_to_one_mux_32bit0 (memory_out, cache_out, hit, out);

endmodule
