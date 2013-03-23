`timescale 1ns / 1ps

module microprocessor_test;

	// Inputs
	reg clk;
	reg clr;

	// Outputs
	wire [15:0] pc_in;
	wire [15:0] pc_out;
	wire [15:0] instruction;
	wire [15:0] pc_inc;
	wire [15:0] offset_extended;
	wire [15:0] pc_bne;
	wire branch_ok;
	wire [15:0] pc0;
	wire [15:0] pc1;
	wire reg_dst;
	wire alu_src;
	wire mem_to_reg;
	wire reg_write;
	wire mem_write;
	wire branch;
	wire jump;
	wire [3:0] reg_addr;
	wire [15:0] reg_data_in;
	wire [15:0] reg_data_out0;
	wire [15:0] reg_data_out1;
	wire [15:0] alu_in;
	wire [15:0] alu_out;
	wire bne;
	wire [15:0] R0;
	wire [15:0] R1;
	wire [15:0] R2;
	wire [15:0] R3;
	wire [15:0] R4;
	wire [15:0] R5;
	wire [15:0] R6;
	wire [15:0] R7;
	wire [15:0] R8;
	wire [15:0] R9;
	wire [15:0] R10;
	wire [15:0] R11;
	wire [15:0] R12;
	wire [15:0] R13;
	wire [15:0] R14;
	wire [15:0] R15;

	// Instantiate the Unit Under Test (UUT)
	microprocessor uut (
		.clk(clk), 
		.clr(clr), 
		.pc_in(pc_in), 
		.pc_out(pc_out), 
		.instruction(instruction), 
		.pc_inc(pc_inc), 
		.offset_extended(offset_extended), 
		.pc_bne(pc_bne), 
		.branch_ok(branch_ok), 
		.pc0(pc0), 
		.pc1(pc1), 
		.reg_dst(reg_dst), 
		.alu_src(alu_src), 
		.mem_to_reg(mem_to_reg), 
		.reg_write(reg_write), 
		.mem_write(mem_write), 
		.branch(branch), 
		.jump(jump), 
		.reg_addr(reg_addr), 
		.reg_data_in(reg_data_in), 
		.reg_data_out0(reg_data_out0), 
		.reg_data_out1(reg_data_out1), 
		.alu_in(alu_in), 
		.alu_out(alu_out), 
		.bne(bne), 
		.R0(R0), 
		.R1(R1), 
		.R2(R2), 
		.R3(R3), 
		.R4(R4), 
		.R5(R5), 
		.R6(R6), 
		.R7(R7), 
		.R8(R8), 
		.R9(R9), 
		.R10(R10), 
		.R11(R11), 
		.R12(R12), 
		.R13(R13), 
		.R14(R14), 
		.R15(R15)
	);
	
	initial begin
		#4;
		forever #0.5 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		#1;
		clr = 1;
        
		// Add stimulus here

	end
      
endmodule

