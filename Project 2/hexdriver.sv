//Written by Timothy Gedney and Caitlynn Jones
module hexdriver (input [3:0] val, output logic [6:0] HEX);
	always @(*) begin
		case (val)
			4'b0000: HEX = ~7'b0111111; //0000 > 0
			4'b0001: HEX = ~7'b0000110; //0001 > 1
			4'b0010: HEX = ~7'b1011011; //0010 > 2
			4'b0011: HEX = ~7'b1001111; //0011 > 3
			4'b0100: HEX = ~7'b1100110; //0100 > 4
			4'b0101: HEX = ~7'b1101101; //0101 > 5
			4'b0110: HEX = ~7'b1111101; //0110 > 6
			4'b0111: HEX = ~7'b0000111; //0111 > 7
			4'b1000: HEX = ~7'b1111111; //1000 > 8
			4'b1001: HEX = ~7'b1100111; //1001 > 9
			4'b1010: HEX = ~7'b1110111; //1010 > A
			4'b1011: HEX = ~7'b1111100; //1011 > b
			4'b1100: HEX = ~7'b0111001; //1100 > C
			4'b1101: HEX = ~7'b1011110; //1101 > d
			4'b1110: HEX = ~7'b1111001; //1110 > E
			4'b1111: HEX = ~7'b1110001; //1111 > F
			default : HEX = ~7'b0000000; //empty display for default
		endcase
	end
endmodule
