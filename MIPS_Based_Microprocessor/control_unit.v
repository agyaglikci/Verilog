`timescale 1ns / 1ps

module control_unit(
	input [3:0] op,
	output reg reg_dst, alu_src, mem_to_reg, reg_write,
			 mem_write, branch, jump
);

	always @* begin
		case(op)
			4'b0000:
			begin
				reg_dst=1; alu_src=0; mem_to_reg=0; reg_write=1;
				mem_write=0; branch=0; jump=0;
			end
			4'b0001:
			begin
				reg_dst=1; alu_src=0; mem_to_reg=0; reg_write=1;
				mem_write=0; branch=0; jump=0;
			end
			4'b0010:
			begin
				reg_dst=1; alu_src=0; mem_to_reg=0; reg_write=1;
				mem_write=0; branch=0; jump=0;
			end
			4'b0011:
			begin
				
			end
			4'b0100:
			begin
				
			end
			4'b0101:
			begin
				
			end
			4'b0110:
			begin
				reg_dst=1; alu_src=0; mem_to_reg=0; reg_write=1;
				mem_write=0; branch=0; jump=0;
			end
			4'b0111:
			begin
				reg_dst=1; alu_src=0; mem_to_reg=0; reg_write=1;
				mem_write=0; branch=0; jump=0;
			end
			4'b1000:
			begin
				reg_dst=0; alu_src=1; mem_to_reg=1; reg_write=1;
				mem_write=0; branch=0; jump=0;
			end
			4'b1001:
			begin
				
			end
			4'b1010:
			begin
				alu_src=1; reg_write=0;
				mem_write=1; branch=0; jump=0;
			end
			4'b1011:
			begin
				
			end
			4'b1100:
			begin
				
			end
			4'b1101:
			begin
				
			end
			4'b1110:
			begin
				alu_src=0; reg_write=1; mem_write=0; branch=1; jump=0;
			end
			4'b1111:
			begin
				reg_write=0; jump=1; mem_write=0;
			end
		endcase
	end
endmodule
