//Author: Christopher Zacky
//Class: ECE425
//Professor: Dr. H. El Naga
//Date: October 14, 2012
//Assignment: Lab2, ALU
//File: logic_16.v

`timescale 1ns / 1ps

module logic_16(
    );
endmodule

/*module and_16(
	input [15:0] x,
	input [15:0] y,
	output [15:0] z
);
	and(z[0], x[0], y[0]);
	and(z[1], x[1], y[1]);
	and(z[2], x[2], y[2]);
	and(z[3], x[3], y[3]);
	and(z[4], x[4], y[4]);
	and(z[5], x[5], y[5]);
	and(z[6], x[6], y[6]);
	and(z[7], x[7], y[7]);
	and(z[8], x[8], y[8]);
	and(z[9], x[9], y[9]);
	and(z[10], x[10], y[10]);
	and(z[11], x[11], y[11]);
	and(z[12], x[12], y[12]);
	and(z[13], x[13], y[13]);
	and(z[14], x[14], y[14]);
	and(z[15], x[15], y[15]);
endmodule*/

module and_16_1(
	input [15:0] x,
	input y,
	output [15:0] z
);
	and(z[0], x[0], y);
	and(z[1], x[1], y);
	and(z[2], x[2], y);
	and(z[3], x[3], y);
	and(z[4], x[4], y);
	and(z[5], x[5], y);
	and(z[6], x[6], y);
	and(z[7], x[7], y);
	and(z[8], x[8], y);
	and(z[9], x[9], y);
	and(z[10], x[10], y);
	and(z[11], x[11], y);
	and(z[12], x[12], y);
	and(z[13], x[13], y);
	and(z[14], x[14], y);
	and(z[15], x[15], y);
endmodule

/*module or_16(
	input [15:0] x,
	input [15:0] y,
	output [15:0] z
);
	or(z[0], x[0], y[0]);
	or(z[1], x[1], y[1]);
	or(z[2], x[2], y[2]);
	or(z[3], x[3], y[3]);
	or(z[4], x[4], y[4]);
	or(z[5], x[5], y[5]);
	or(z[6], x[6], y[6]);
	or(z[7], x[7], y[7]);
	or(z[8], x[8], y[8]);
	or(z[9], x[9], y[9]);
	or(z[10], x[10], y[10]);
	or(z[11], x[11], y[11]);
	or(z[12], x[12], y[12]);
	or(z[13], x[13], y[13]);
	or(z[14], x[14], y[14]);
	or(z[15], x[15], y[15]);
endmodule*/

module or_16_16(
	input [15:0] x,
	input [15:0] y,
	input [15:0] a,
	input [15:0] b,
	input [15:0] c,
	input [15:0] d,
	input [15:0] e,
	input [15:0] f,
	input [15:0] g,
	input [15:0] h,
	input [15:0] i,
	input [15:0] j,
	input [15:0] k,
	input [15:0] l,
	input [15:0] m,
	input [15:0] n,
	output [15:0] z
);
	or(z[0], x[0], y[0], a[0], b[0], c[0], d[0], e[0], f[0], g[0], h[0], i[0], j[0], k[0], l[0], m[0], n[0]);
	or(z[1], x[1], y[1], a[1], b[1], c[1], d[1], e[1], f[1], g[1], h[1], i[1], j[1], k[1], l[1], m[1], n[1]);
	or(z[2], x[2], y[2], a[2], b[2], c[2], d[2], e[2], f[2], g[2], h[2], i[2], j[2], k[2], l[2], m[2], n[2]);
	or(z[3], x[3], y[3], a[3], b[3], c[3], d[3], e[3], f[3], g[3], h[3], i[3], j[3], k[3], l[3], m[3], n[3]);
	or(z[4], x[4], y[4], a[4], b[4], c[4], d[4], e[4], f[4], g[4], h[4], i[4], j[4], k[4], l[4], m[4], n[4]);
	or(z[5], x[5], y[5], a[5], b[5], c[5], d[5], e[5], f[5], g[5], h[5], i[5], j[5], k[5], l[5], m[5], n[5]);
	or(z[6], x[6], y[6], a[6], b[6], c[6], d[6], e[6], f[6], g[6], h[6], i[6], j[6], k[6], l[6], m[6], n[6]);
	or(z[7], x[7], y[7], a[7], b[7], c[7], d[7], e[7], f[7], g[7], h[7], i[7], j[7], k[7], l[7], m[7], n[7]);
	or(z[8], x[8], y[8], a[8], b[8], c[8], d[8], e[8], f[8], g[8], h[8], i[8], j[8], k[8], l[8], m[8], n[8]);
	or(z[9], x[9], y[9], a[9], b[9], c[9], d[9], e[9], f[9], g[9], h[9], i[9], j[9], k[9], l[9], m[9], n[9]);
	or(z[10], x[10], y[10], a[10], b[10], c[10], d[10], e[10], f[10], g[10], h[10], i[10], j[10], k[10], l[10], m[10], n[10]);
	or(z[11], x[11], y[11], a[11], b[11], c[11], d[11], e[11], f[11], g[11], h[11], i[11], j[11], k[11], l[11], m[11], n[11]);
	or(z[12], x[12], y[12], a[12], b[12], c[12], d[12], e[12], f[12], g[12], h[12], i[12], j[12], k[12], l[12], m[12], n[12]);
	or(z[13], x[13], y[13], a[13], b[13], c[13], d[13], e[13], f[13], g[13], h[13], i[13], j[13], k[13], l[13], m[13], n[13]);
	or(z[14], x[14], y[14], a[14], b[14], c[14], d[14], e[14], f[14], g[14], h[14], i[14], j[14], k[14], l[14], m[14], n[14]);
	or(z[15], x[15], y[15], a[15], b[15], c[15], d[15], e[15], f[15], g[15], h[15], i[15], j[15], k[15], l[15], m[15], n[15]);
endmodule

/*module xor_16(
	input [15:0] x,
	input [15:0] y,
	output [15:0] z
);
	xor(z[0], x[0], y[0]);
	xor(z[1], x[1], y[1]);
	xor(z[2], x[2], y[2]);
	xor(z[3], x[3], y[3]);
	xor(z[4], x[4], y[4]);
	xor(z[5], x[5], y[5]);
	xor(z[6], x[6], y[6]);
	xor(z[7], x[7], y[7]);
	xor(z[8], x[8], y[8]);
	xor(z[9], x[9], y[9]);
	xor(z[10], x[10], y[10]);
	xor(z[11], x[11], y[11]);
	xor(z[12], x[12], y[12]);
	xor(z[13], x[13], y[13]);
	xor(z[14], x[14], y[14]);
	xor(z[15], x[15], y[15]);
endmodule*/

module two_to_one_mux(
	input [15:0] a,
	input [15:0] b,
	input s,
	output [15:0] c
);
	wire [15:0] at, bt;
	wire sn;
	
	not(sn, s);
	and(at[0], a[0], sn);
	and(at[1], a[1], sn);
	and(at[2], a[2], sn);
	and(at[3], a[3], sn);
	and(at[4], a[4], sn);
	and(at[5], a[5], sn);
	and(at[6], a[6], sn);
	and(at[7], a[7], sn);
	and(at[8], a[8], sn);
	and(at[9], a[9], sn);
	and(at[10], a[10], sn);
	and(at[11], a[11], sn);
	and(at[12], a[12], sn);
	and(at[13], a[13], sn);
	and(at[14], a[14], sn);
	and(at[15], a[15], sn);
	
	and(bt[0], b[0], s);
	and(bt[1], b[1], s);
	and(bt[2], b[2], s);
	and(bt[3], b[3], s);
	and(bt[4], b[4], s);
	and(bt[5], b[5], s);
	and(bt[6], b[6], s);
	and(bt[7], b[7], s);
	and(bt[8], b[8], s);
	and(bt[9], b[9], s);
	and(bt[10], b[10], s);
	and(bt[11], b[11], s);
	and(bt[12], b[12], s);
	and(bt[13], b[13], s);
	and(bt[14], b[14], s);
	and(bt[15], b[15], s);
	
	or(c[0], at[0], bt[0]);
	or(c[1], at[1], bt[1]);
	or(c[2], at[2], bt[2]);
	or(c[3], at[3], bt[3]);
	or(c[4], at[4], bt[4]);
	or(c[5], at[5], bt[5]);
	or(c[6], at[6], bt[6]);
	or(c[7], at[7], bt[7]);
	or(c[8], at[8], bt[8]);
	or(c[9], at[9], bt[9]);
	or(c[10], at[10], bt[10]);
	or(c[11], at[11], bt[11]);
	or(c[12], at[12], bt[12]);
	or(c[13], at[13], bt[13]);
	or(c[14], at[14], bt[14]);
	or(c[15], at[15], bt[15]);
	
endmodule

module two_to_one_mux_4(
	input [3:0] a,
	input [3:0] b,
	input s,
	output [3:0] c
);
	wire [3:0] at, bt;
	wire sn;
	
	not(sn, s);
	and(at[0], a[0], sn);
	and(at[1], a[1], sn);
	and(at[2], a[2], sn);
	and(at[3], a[3], sn);
	
	and(bt[0], b[0], s);
	and(bt[1], b[1], s);
	and(bt[2], b[2], s);
	and(bt[3], b[3], s);
	
	or(c[0], at[0], bt[0]);
	or(c[1], at[1], bt[1]);
	or(c[2], at[2], bt[2]);
	or(c[3], at[3], bt[3]);
	
endmodule

module D_flip_flop_16(
	input [15:0] data,
	input load,
	input clk,
	input clr,
	output [15:0] Q
);
	D_flip_flop_extended d0 (data[0], load, clk, clr, Q[0]);
	D_flip_flop_extended d1 (data[1], load, clk, clr, Q[1]);
	D_flip_flop_extended d2 (data[2], load, clk, clr, Q[2]);
	D_flip_flop_extended d3 (data[3], load, clk, clr, Q[3]);
	D_flip_flop_extended d4 (data[4], load, clk, clr, Q[4]);
	D_flip_flop_extended d5 (data[5], load, clk, clr, Q[5]);
	D_flip_flop_extended d6 (data[6], load, clk, clr, Q[6]);
	D_flip_flop_extended d7 (data[7], load, clk, clr, Q[7]);
	D_flip_flop_extended d8 (data[8], load, clk, clr, Q[8]);
	D_flip_flop_extended d9 (data[9], load, clk, clr, Q[9]);
	D_flip_flop_extended d10 (data[10], load, clk, clr, Q[10]);
	D_flip_flop_extended d11 (data[11], load, clk, clr, Q[11]);
	D_flip_flop_extended d12 (data[12], load, clk, clr, Q[12]);
	D_flip_flop_extended d13 (data[13], load, clk, clr, Q[13]);
	D_flip_flop_extended d14 (data[14], load, clk, clr, Q[14]);
	D_flip_flop_extended d15 (data[15], load, clk, clr, Q[15]);
	
endmodule

module two_to_one_mux_1(
	input a,
	input b,
	input s,
	output c
);
	wire sn, at, bt;
	not(sn, s);
	
	and(at, a, sn);
	and(bt, b, s);
	or(c, at, bt);
	
endmodule

module sign_extend_4_to_16(
	input [3:0] four_bit_in,
	output [15:0] sixteen_bit_out
);
	or(sixteen_bit_out[0], 1'b0, four_bit_in[0]);
	or(sixteen_bit_out[1], 1'b0, four_bit_in[1]);
	or(sixteen_bit_out[2], 1'b0, four_bit_in[2]);
	or(sixteen_bit_out[3], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[4], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[5], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[6], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[7], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[8], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[9], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[10], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[11], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[12], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[13], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[14], 1'b0, four_bit_in[3]);
	or(sixteen_bit_out[15], 1'b0, four_bit_in[3]);
endmodule

module sixteen_to_one_mux(
	input [15:0] i0,
	input [15:0] i1,
	input [15:0] i2,
	input [15:0] i3,
	input [15:0] i4,
	input [15:0] i5,
	input [15:0] i6,
	input [15:0] i7,
	input [15:0] i8,
	input [15:0] i9,
	input [15:0] i10,
	input [15:0] i11,
	input [15:0] i12,
	input [15:0] i13,
	input [15:0] i14,
	input [15:0] i15,
	input [3:0] s,
	output [15:0] out
);
	wire [15:0] s_decoded;
	wire [15:0] out0;
	wire [15:0] out1;
	wire [15:0] out2;
	wire [15:0] out3;
	wire [15:0] out4;
	wire [15:0] out5;
	wire [15:0] out6;
	wire [15:0] out7;
	wire [15:0] out8;
	wire [15:0] out9;
	wire [15:0] out10;
	wire [15:0] out11;
	wire [15:0] out12;
	wire [15:0] out13;
	wire [15:0] out14;
	wire [15:0] out15;
	
	four_to_sixteen_decoder decode0 (s, 1'b1, s_decoded);
	
	and_16_1 and0 (i0, s_decoded[0], out0);
	and_16_1 and1 (i1, s_decoded[1], out1);
	and_16_1 and2 (i2, s_decoded[2], out2);
	and_16_1 and3 (i3, s_decoded[3], out3);
	and_16_1 and4 (i4, s_decoded[4], out4);
	and_16_1 and5 (i5, s_decoded[5], out5);
	and_16_1 and6 (i6, s_decoded[6], out6);
	and_16_1 and7 (i7, s_decoded[7], out7);
	and_16_1 and8 (i8, s_decoded[8], out8);
	and_16_1 and9 (i9, s_decoded[9], out9);
	and_16_1 and10 (i10, s_decoded[10], out10);
	and_16_1 and11 (i11, s_decoded[11], out11);
	and_16_1 and12 (i12, s_decoded[12], out12);
	and_16_1 and13 (i13, s_decoded[13], out13);
	and_16_1 and14 (i14, s_decoded[14], out14);
	and_16_1 and15 (i15, s_decoded[15], out15);

	or_16_16 or0 (out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out);

endmodule


module four_to_sixteen_decoder(
	input [3:0] i,
	input e,
	output [15:0] out
);
	wire [15:0] ni;  //inverted inputs

	not(ni[0], i[0]);  //aquire inverted inputs
	not(ni[1], i[1]);
	not(ni[2], i[2]);
	not(ni[3], i[3]);

	and(out[0], ni[0], ni[1], ni[2], ni[3], e);  //main decoder logic
	and(out[1], i[0], ni[1], ni[2], ni[3], e);
	and(out[2], ni[0], i[1], ni[2], ni[3], e);
	and(out[3], i[0], i[1], ni[2], ni[3], e);
	and(out[4], ni[0], ni[1], i[2], ni[3], e);
	and(out[5], i[0], ni[1], i[2], ni[3], e);
	and(out[6], ni[0], i[1], i[2], ni[3], e);
	and(out[7], i[0], i[1], i[2], ni[3], e);
	and(out[8], ni[0], ni[1], ni[2], i[3], e);
	and(out[9], i[0], ni[1], ni[2], i[3], e);
	and(out[10], ni[0], i[1], ni[2], i[3], e);
	and(out[11], i[0], i[1], ni[2], i[3], e);
	and(out[12], ni[0], ni[1], i[2], i[3], e);
	and(out[13], i[0], ni[1], i[2], i[3], e);
	and(out[14], ni[0], i[1], i[2], i[3], e);
	and(out[15], i[0], i[1], i[2], i[3], e);
endmodule

module jump_combine(
	input [11:0] address,
	input [3:0] pc_in,
	output [15:0] pc_out
);
	or(pc_out[0], 1'b0, address[0]);
	or(pc_out[1], 1'b0, address[1]);
	or(pc_out[2], 1'b0, address[2]);
	or(pc_out[3], 1'b0, address[3]);
	or(pc_out[4], 1'b0, address[4]);
	or(pc_out[5], 1'b0, address[5]);
	or(pc_out[6], 1'b0, address[6]);
	or(pc_out[7], 1'b0, address[7]);
	or(pc_out[8], 1'b0, address[8]);
	or(pc_out[9], 1'b0, address[9]);
	or(pc_out[10], 1'b0, address[10]);
	or(pc_out[11], 1'b0, address[11]);
	or(pc_out[12], 1'b0, pc_in[0]);
	or(pc_out[13], 1'b0, pc_in[1]);
	or(pc_out[14], 1'b0, pc_in[2]);
	or(pc_out[15], 1'b0, pc_in[3]);
endmodule
