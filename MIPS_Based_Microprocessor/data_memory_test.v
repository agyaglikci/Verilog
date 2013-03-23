`timescale 1ns / 1ps

module data_memory_test;

	// Inputs
	reg [15:0] address;
	reg [15:0] write_data;
	reg load;

	// Outputs
	wire [15:0] output_data;

	// Instantiate the Unit Under Test (UUT)
	data_memory uut (
		.address(address), 
		.write_data(write_data), 
		.load(load), 
		.output_data(output_data)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		write_data = 0;
		load = 0;
        
		// Add stimulus here
		#1;
		write_data=16'hAABB;
		#1;
		load=1;
		#1;
		load=0;
		#1;
		write_data=16'hFFFF;
		address=1;
		#1;
		load=1;

	end
      
endmodule

