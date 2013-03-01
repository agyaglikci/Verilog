`timescale 1ns / 1ps

module cache_test;

	// Inputs
	reg [11:0] address;
	reg [31:0] data;
	reg r_or_w;
	reg clk;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	DirectMapCache uut (
		.address(address), 
		.data(data), 
		.r_or_w(r_or_w), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		forever #0.5 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		address = 0;
		data = 0;
		r_or_w = 0;
		clk = 0;
        
		// Add stimulus here
		#3;
		address = 1;
		#3;
		address = 2;
		#3;
		address = 3;
		#3;
		data = 32'hFFFFFFFF;
		r_or_w = 1;
		address = 1;
		#3;
		r_or_w = 0;
		address = 3;
		#3;
		address = 1;

	end
      
endmodule

