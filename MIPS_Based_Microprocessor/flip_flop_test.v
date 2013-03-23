`timescale 1ns / 1ps

module flip_flop_test;

	// Inputs
	reg D;
	reg clk;
	reg clr;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_flip_flop uut (
		.D(D), 
		.clk(clk), 
		.clr(clr), 
		.Q(Q)
	);
	
	initial begin
		forever #0.5 clk = ~clk;
	end
	
	
	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		clr = 1;
		#1;
		D=1;
		#1;
		D=0;
		#1;
		D=1;
		#1.4; 
		clr=0;
		D=0;
		#2;
		clr=1;
		D=1;
		#2;
		D=0;
	end
	
	

	
      
endmodule

