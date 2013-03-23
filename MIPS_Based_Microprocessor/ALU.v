//Author: Christopher Zacky
//Class: ECE425
//Professor: Dr. H. El Naga
//Date: October 14, 2012
//Assignment: Lab2, ALU
//File: ALU.v

`timescale 1ns / 1ps

module ALU(
	input [15:0] rs,
	input [15:0] rt,
	input [3:0] op,
	output [15:0] rd,
	output bne, ov
);
	wire [15:0] and_16;
	wire [15:0] or_16;
	wire [15:0] add_16;
	wire [15:0] slt_16;
	wire cout;
	
	//AND instruction
	and(and_16[0], rs[0], rt[0]);
	and(and_16[1], rs[1], rt[1]);
	and(and_16[2], rs[2], rt[2]);
	and(and_16[3], rs[3], rt[3]);
	and(and_16[4], rs[4], rt[4]);
	and(and_16[5], rs[5], rt[5]);
	and(and_16[6], rs[6], rt[6]);
	and(and_16[7], rs[7], rt[7]);
	and(and_16[8], rs[8], rt[8]);
	and(and_16[9], rs[9], rt[9]);
	and(and_16[10], rs[10], rt[10]);
	and(and_16[11], rs[11], rt[11]);
	and(and_16[12], rs[12], rt[12]);
	and(and_16[13], rs[13], rt[13]);
	and(and_16[14], rs[14], rt[14]);
	and(and_16[15], rs[15], rt[15]);
	
	//OR instruction
	or(or_16[0], rs[0], rt[0]);
	or(or_16[1], rs[1], rt[1]);
	or(or_16[2], rs[2], rt[2]);
	or(or_16[3], rs[3], rt[3]);
	or(or_16[4], rs[4], rt[4]);
	or(or_16[5], rs[5], rt[5]);
	or(or_16[6], rs[6], rt[6]);
	or(or_16[7], rs[7], rt[7]);
	or(or_16[8], rs[8], rt[8]);
	or(or_16[9], rs[9], rt[9]);
	or(or_16[10], rs[10], rt[10]);
	or(or_16[11], rs[11], rt[11]);
	or(or_16[12], rs[12], rt[12]);
	or(or_16[13], rs[13], rt[13]);
	or(or_16[14], rs[14], rt[14]);
	or(or_16[15], rs[15], rt[15]);

	//ADD and SUB instructions
	twos_complement_adder add0 (rs, rt, add_16, op[2], cout);
	
	//SLT instruction
	and(slt_16[0], 1, add_16[15]);
	and(slt_16[1], 0, 0);
	and(slt_16[2], 0, 0);
	and(slt_16[3], 0, 0);
	and(slt_16[4], 0, 0);
	and(slt_16[5], 0, 0);
	and(slt_16[6], 0, 0);
	and(slt_16[7], 0, 0);
	and(slt_16[8], 0, 0);
	and(slt_16[9], 0, 0);
	and(slt_16[10], 0, 0);
	and(slt_16[11], 0, 0);
	and(slt_16[12], 0, 0);
	and(slt_16[13], 0, 0);
	and(slt_16[14], 0, 0);
	and(slt_16[15], 0, 0);
	
	//opcode goes into MUX to select instruction
	sixteen_to_one_mux mux0 (and_16, or_16, add_16, 16'h0000, 16'h0000, 16'h0000, add_16, slt_16, 16'h0000, 16'h0000,
	16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, op, rd);
	
	//status registers
	or(bne, add_16[0], add_16[1], add_16[2], add_16[3], add_16[4], add_16[5], add_16[6], add_16[7],
	 add_16[8], add_16[9], add_16[10], add_16[11], add_16[12], add_16[13], add_16[14], add_16[15]);
	

endmodule
