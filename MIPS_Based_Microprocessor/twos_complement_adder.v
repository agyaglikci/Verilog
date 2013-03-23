//Author: Christopher Zacky
//Class: ECE425
//Professor: Dr. H. El Naga
//Date: October 14, 2012
//Assignment: Lab2, ALU
//File: twos_complement_adder.v

`timescale 1ns / 1ps

module twos_complement_adder(a, b, s, f, cout);
	input [15:0] a;  //first 4-bit input
	input [15:0] b;  //second 4-bit input
	input f;  //0 for addition, 1 for subtraction
	output [15:0] s;  //the 4-bit sum
	output cout;
	wire [14:0] c;  //intermediate carries between adders
	wire [15:0] xb;  //xor bits of input b
	
	//take xor of input b with f
	xor(xb[0], b[0], f);
	xor(xb[1], b[1], f);
	xor(xb[2], b[2], f);
	xor(xb[3], b[3], f);
	xor(xb[4], b[4], f);
	xor(xb[5], b[5], f);
	xor(xb[6], b[6], f);
	xor(xb[7], b[7], f);
	xor(xb[8], b[8], f);
	xor(xb[9], b[9], f);
	xor(xb[10], b[10], f);
	xor(xb[11], b[11], f);
	xor(xb[12], b[12], f);
	xor(xb[13], b[13], f);
	xor(xb[14], b[14], f);
	xor(xb[15], b[15], f);
	
	//add or subtract the inputs together
	full_adder add0 (a[0], xb[0], f, s[0], c[0]);
	full_adder add1 (a[1], xb[1], c[0], s[1], c[1]);
	full_adder add2 (a[2], xb[2], c[1], s[2], c[2]);
	full_adder add3 (a[3], xb[3], c[2], s[3], c[3]);
	full_adder add4 (a[4], xb[4], c[3], s[4], c[4]);
	full_adder add5 (a[5], xb[5], c[4], s[5], c[5]);
	full_adder add6 (a[6], xb[6], c[5], s[6], c[6]);
	full_adder add7 (a[7], xb[7], c[6], s[7], c[7]);
	full_adder add8 (a[8], xb[8], c[7], s[8], c[8]);
	full_adder add9 (a[9], xb[9], c[8], s[9], c[9]);
	full_adder add10 (a[10], xb[10], c[9], s[10], c[10]);
	full_adder add11 (a[11], xb[11], c[10], s[11], c[11]);
	full_adder add12 (a[12], xb[12], c[11], s[12], c[12]);
	full_adder add13 (a[13], xb[13], c[12], s[13], c[13]);
	full_adder add14 (a[14], xb[14], c[13], s[14], c[14]);
	full_adder add15 (a[15], xb[15], c[14], s[15], cout);
endmodule

module full_adder(a, b, cin, s, cout);
		input a, b, cin;  //inputs and carry in to the adder
		output s, cout;  //output sum and carry out
		wire ab, axorb, cab;  //intermediate connections

		xor(s, a, b, cin);  //main full adder logic
		and(ab, a, b);
		xor(axorb, a, b);
		and(cab, axorb, cin);
		or(cout, ab, cab);
endmodule
