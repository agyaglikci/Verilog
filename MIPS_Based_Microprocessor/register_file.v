`timescale 1ns / 1ps

module register_file(
	input [3:0] a_addr,
	input [3:0] b_addr,
	input [3:0] c,
	input [15:0] data,
	input load,
	input clr,
	input clk,
	output [15:0] a_data,
	output [15:0] b_data,
	output wire [15:0] R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15
);
	wire [15:0] c_decoded;
	//wire [15:0] R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15;
	
	//load line selector
	four_to_sixteen_decoder decode0 (c, load, c_decoded);
	
	//registers
	D_flip_flop_16 reg0 (data, c_decoded[0], clk, clr, R0);
	D_flip_flop_16 reg1 (data, c_decoded[1], clk, clr, R1);
	D_flip_flop_16 reg2 (data, c_decoded[2], clk, clr, R2);
	D_flip_flop_16 reg3 (data, c_decoded[3], clk, clr, R3);
	D_flip_flop_16 reg4 (data, c_decoded[4], clk, clr, R4);
	D_flip_flop_16 reg5 (data, c_decoded[5], clk, clr, R5);
	D_flip_flop_16 reg6 (data, c_decoded[6], clk, clr, R6);
	D_flip_flop_16 reg7 (data, c_decoded[7], clk, clr, R7);
	D_flip_flop_16 reg8 (data, c_decoded[8], clk, clr, R8);
	D_flip_flop_16 reg9 (data, c_decoded[9], clk, clr, R9);
	D_flip_flop_16 reg10 (data, c_decoded[10], clk, clr, R10);
	D_flip_flop_16 reg11 (data, c_decoded[11], clk, clr, R11);
	D_flip_flop_16 reg12 (data, c_decoded[12], clk, clr, R12);
	D_flip_flop_16 reg13 (data, c_decoded[13], clk, clr, R13);
	D_flip_flop_16 reg14 (data, c_decoded[14], clk, clr, R14);
	D_flip_flop_16 reg15 (data, c_decoded[15], clk, clr, R15);
	
	//output selectors
	sixteen_to_one_mux outputmux0 (R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, a_addr, a_data);
	sixteen_to_one_mux outputmux1 (R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, b_addr, b_data);

endmodule
