`timescale 1ns / 1ps

module instruction_memory(
	input [15:0] PC,
	output [15:0] instruction
);
	wire [15:0] instructions [15:0];
	
//this program will compute 22 divided by 5
		//the quotient is stored in R4
		//the remainder is stored in R2
		
		assign instructions[0] = 16'h8010;// lw 1,(0)0 -- store "1" into R1 from data memory location "0"
		assign instructions[1] = 16'h2116;// add 6,1,1 -- add R1 and R1, store in R6, 1+1=2
		assign instructions[2] = 16'h2667;// add 6,6,7 -- add R6 and R6, store in R7, 2+2=4
		assign instructions[3] = 16'h2713;// add 3,1,7 -- add R7 and R1, store in R3, 4+1=5
		assign instructions[4] = 16'h2337;// add 7,3,3 -- add R3 and R3, store in R7, 5+5=10
		assign instructions[5] = 16'h2777;// add 7,7,7 -- add R7 and R7, store in R7, 10+10=20
		assign instructions[6] = 16'h2762;// add 2,6,7 -- add R7 and R6, store in R2, 20+2=22
		assign instructions[7] = 16'h6322;// sub 2,2,3 -- subtract R3 from R2 and store into R2
		assign instructions[8] = 16'h2414;// add 4,4,1 -- add R1 to R4 and store in R4, this is incrementing the quotient
		assign instructions[9] = 16'h7235;// slt 5,2,3 -- set R5 to "1" if R2 is less than R3, else set R5 to 0
		assign instructions[10] = 16'hE50C;// bne 5,1,-4 -- branch back to instruction[7] if R5 is not equal to "1"
		assign instructions[11] = 16'hF00B;// j 11 -- jump to this instruction forever, the program is over
		
	assign instruction = instructions[PC];
endmodule
