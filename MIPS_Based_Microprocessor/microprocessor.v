`timescale 1ns / 1ps

module microprocessor(
	input wire clk,
	input wire clr,
	input wire button,
	input wire [3:0] switch,
	input wire switch2,/*
	output wire [15:0] pc_in,
	output wire [15:0] pc_out,
	output wire [15:0] instruction,
	output wire [15:0] pc_inc,
	output wire [15:0] offset_extended,
	output wire [15:0] pc_bne,
	output wire branch_ok,
	output wire [15:0] pc0, pc1,
	output wire reg_dst, alu_src, mem_to_reg, reg_write, mem_write, branch, jump,
	output wire [3:0] reg_addr,
	output wire [15:0] reg_data_in,
	output wire [15:0] reg_data_out0, reg_data_out1,
	output wire [15:0] alu_in, alu_out,
	output wire bne,
	output wire [15:0] data_memory_out,
	output wire [15:0] R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15,*/
	output wire [7:0] led,
	output wire [7:0] sseg,
	output wire [3:0] an
);
	wire [15:0] pc_in;
	wire [15:0] pc_out;
	wire [15:0] instruction;
	wire [15:0] pc_inc;
	wire [15:0] offset_extended;
	wire [15:0] pc_bne;
	wire branch_ok;
	wire [15:0] pc0, pc1;
	wire reg_dst, alu_src, mem_to_reg, reg_write, mem_write, branch, jump;
	wire [3:0] reg_addr;
	wire [15:0] reg_data_in;
	wire [15:0] reg_data_out0, reg_data_out1;
	wire [15:0] alu_in, alu_out;
	wire bne;
	wire [15:0] data_memory_out;
	wire [15:0] R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15;

reg [26:0] debounce;
reg [15:0] sin;
reg btn;
	initial begin
		btn = 0;
		debounce = 0;
	end
	
	always@(posedge clk)
	begin
		btn = 0;
		if(button == 1)
		begin
			if(debounce == 100000)
			begin
				btn = 1;
				debounce = debounce + 1;
			end
			else if(debounce < 100000)
			begin
				debounce = debounce + 1;
			end
		end
		else
		begin
			debounce = 0;
		end
	end

	//PC increment, branch, and jump
	program_counter program_counter0 (.clk(btn), .pc_in(pc_in), .clr(clr), .pc_out(pc_out));
	instruction_memory instruction_memory0 (.PC(pc_out), .instruction(instruction));
	ALU pc_increment (.rs(pc_out), .rt(16'h0001), .op(4'h02), .rd(pc_inc));
	sign_extend_4_to_16 extend_bne (.four_bit_in(instruction[3:0]), .sixteen_bit_out(offset_extended));
	ALU alu_bne (.rs(pc_inc), .rt(offset_extended), .op(4'h2), .rd(pc_bne));
	two_to_one_mux mux_branch (.a(pc_inc), .b(pc_bne), .s(branch_ok), .c(pc0));
	jump_combine jump_combine0 (.address(instruction[11:0]), .pc_in(pc_inc[15:12]), .pc_out(pc1));
	two_to_one_mux mux_pc_in (.a(pc0), .b(pc1), .s(jump), .c(pc_in));
	
	//control unit
	control_unit control_unit0 (.op(instruction[15:12]), .reg_dst(reg_dst), .alu_src(alu_src),
										 .mem_to_reg(mem_to_reg), .reg_write(reg_write), .mem_write(mem_write),
										 .branch(branch), .jump(jump));
	
	//register file
	two_to_one_mux_4 mux_register_file_in (.a(instruction[7:4]), .b(instruction[3:0]), .s(reg_dst), .c(reg_addr));
	register_file register_file0 (.a_addr(instruction[11:8]), .b_addr(instruction[7:4]), .c(reg_addr), .data(reg_data_in),
											.load(reg_write), .clr(~clr), .clk(btn), .a_data(reg_data_out0), .b_data(reg_data_out1),
											.R0(R0), .R1(R1), .R2(R2), .R3(R3), .R4(R4), .R5(R5), .R6(R6), .R7(R7), .R8(R8), .R9(R9),
											.R10(R10), .R11(R11), .R12(R12), .R13(R13), .R14(R14), .R15(R15));
											
	//ALU
	two_to_one_mux mux_alu_in (.a(reg_data_out0), .b(offset_extended), .s(alu_src), .c(alu_in));
	ALU alu_main (.rs(reg_data_out1), .rt(alu_in), .op(instruction[15:12]), .rd(alu_out), .bne(bne));
	and(branch_ok, branch, bne);
	
	//data memory and write back
	data_memory data_memory0 (.address(alu_out), .write_data(reg_data_out1), .load(mem_write), .clr(~clr), .output_data(data_memory_out));
	two_to_one_mux mux_write_back (.a(alu_out), .b(data_memory_out), .s(mem_to_reg), .c(reg_data_in));
	
	sevenseg fdsfsd(clk, sin, sseg, an);
	
	assign led = pc_out[7:0];
	always@*
	begin
		if(switch2 == 0)
		begin
			case (switch)
				0: sin = R0[7:0];
				1: sin = R1[7:0];
				2: sin = R2[7:0];
				3: sin = R3[7:0];
				4: sin = R4[7:0];
				5: sin = R5[7:0];
				6: sin = R6[7:0];
				7: sin = R7[7:0];
				8: sin = R8[7:0];
				9: sin = R9[7:0];
				10: sin = R10[7:0];
				11: sin = R11[7:0];
				12: sin = R12[7:0];
				13: sin = R13[7:0];
				14: sin = R14[7:0];
				15: sin = R15[7:0];
			endcase
		end
		else
			sin = instruction;
	end
		/*sevenseg ssss(clk,
					  [15:0] in,
					  reg [7:0] segs,
					 output reg [3:0] an);
	*/
	

	
endmodule
