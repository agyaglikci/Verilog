`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:48 11/29/2012 
// Design Name: 
// Module Name:    sevenseg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sevenseg(input wire clk,
					 input wire [15:0] in,
					 output reg [7:0] segs,
					 output reg [3:0] an);
	
	reg [27:0] counter = 0;
	reg clk2 = 0;
	
	wire [6:0] dec[3:0];
	
	initial begin
		segs = 0;
		an = 4'b1110;
	end
	
	SevenSegmentDisplayDecoder s0(dec[0], in[3:0]);
	SevenSegmentDisplayDecoder s1(dec[1], in[7:4]);
	SevenSegmentDisplayDecoder s2(dec[2], in[11:8]);
	SevenSegmentDisplayDecoder s3(dec[3], in[15:12]);
	
	always@(posedge clk)
	begin
		counter = counter + 1;
		if(counter >= 100_000)
		begin
			clk2 = ~clk2;
			counter = 0;
		end
	end
	
	always@(posedge clk2)
	begin
		//an = {an[0], an[3:1]};
		
		if(an == 4'b1110)
		begin
			an = 4'b1101;
		end
		else if(an == 4'b1101)
		begin
			an = 4'b1011;
		end
		else if(an == 4'b1011)
		begin
			an = 4'b0111;
		end
		else if(an == 4'b0111)
		begin
			an = 4'b1110;
		end
		
		case (an)
			4'b1110:	segs = ~{1'b0, dec[0]};
			4'b1101: segs = ~{1'b0, dec[1]};
			4'b1011: segs = ~{1'b0, dec[2]};
			4'b0111: segs = ~{1'b0, dec[3]};
		endcase
		//segs = 8'b11111001;
	end


endmodule
