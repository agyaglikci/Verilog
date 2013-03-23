`timescale 1ns / 1ps

module register_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] c;
	reg [15:0] data;
	reg load;
	reg clr;
	reg clk;

	// Outputs
	wire [15:0] A;
	wire [15:0] B;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.data(data), 
		.load(load), 
		.clr(clr), 
		.clk(clk), 
		.A(A), 
		.B(B)
	);
	initial begin
		forever #0.5 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		data = 0;
		load = 0;
		clr = 0;
		clk = 0;
		#3;
		clr=1;
		#3;
		data=16'b1111111100000000;
		load=1;
		#3;
		load=0;
		a=4'b0001;
		b=4'b0010;
		c=4'b0010;
		data=16'b0000000011111111;
		#3;
		load=1;
		#3;
		clr=0;
	end
      
endmodule

