`timescale 1ns / 1ps

//master-slave D flip-flop with clear
module D_flip_flop(
	input D,
	input clk,
	input clr,
	output Q
);
	not(nclr, clr);
	not(nclk, clk);

	not(nd, D);  //first D flip flop
	and(r0, nd, nclk);
	and(s0, D, nclk);
	or(r0_clr, r0, nclr);

	nor(Q0n, s0, Q0);  //first RS latch
	nor(Q0, r0_clr, Q0n);

	and(r1, Q0n, clk);   //second D flip flop
	and(s1, Q0, clk);
	or(r1_clr, r1, nclr);

	nor(Qn, s1, Q);  //second RS latch
	nor(Q, Qn, r1_clr);

endmodule

module D_flip_flop_extended(
	input data,
	input load,
	input clk,
	input clr,
	output Q
);
	wire D;
	two_to_one_mux_1 mux0 (Q, data, load, D);
	D_flip_flop D0 (D, clk, clr, Q);
endmodule
