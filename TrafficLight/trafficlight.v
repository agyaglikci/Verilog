`timescale 1ns / 1ps

module trafficlight(clk, go, PG, PY, PR, TG, TY, TR);
input clk, go;
output reg PG, PY, PR, TG, TY, TR;
reg [2:0] state;
initial state = 0;
reg [28:0] c;

always@(posedge clk)
case (state)
	0: begin
			PR <= 1;
			PY <= 0;
			PG <= 0;
			TR <= 0;
			TY <= 0;
			TG <= 1;
			if(go)
			begin
				TG <= 0;
				TY <= 1;
				c <= 200000000;
				state <= 1;
			end
		end
	1: if(c==0)
		begin
			TY <= 0;
			TR <= 1;
			c <= 100000000;
			state <= 2;
		end
		else
			c <= c - 1;
	2: if(c==0)
		begin
			PR <= 0;
			PG <= 1;
			c <= 400000000;
			state <= 3;
		end
		else
			c <= c - 1;
	3: if(c==0)
		begin
			PG <= 0;
			PY <= 1;
			c <= 200000000;
			state <= 4;
		end
		else
			c <= c - 1;
	4: if(c==0)
		begin
			PY <= 0;
			PR <= 1;
			c <= 100000000;
			state <= 5;
		end
		else
			c <= c - 1;
	5: if(c==0)
			state <= 0;
		else
			c <= c - 1;
	default: state <= 0;
endcase

endmodule
