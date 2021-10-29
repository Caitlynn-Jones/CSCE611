//Edited by Timothy Gedney and Caitlynn Jones
/* Copyright 2020 Jason Bakos, Philip Conrad, Charles Daniels */

/* Top-level module for CSCE611 RISC-V CPU, for running under simulation.  In
 * this case, the I/Os and clock are driven by the simulator. */

module simtop;

	logic [17:0] SW;
	logic clk;
	logic [6:0] HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7;

	top dut
	(
		//////////// CLOCK //////////
		.CLOCK_50(clk),
		.CLOCK2_50(),
	        .CLOCK3_50(),

		//////////// LED //////////
		.LEDG(),
		.LEDR(),

		//////////// KEY //////////
		.KEY(),

		//////////// SW //////////
		.SW(SW),

		//////////// SEG7 //////////
		.HEX0(HEX0),
		.HEX1(HEX1),
		.HEX2(HEX2),
		.HEX3(HEX3),
		.HEX4(HEX4),
		.HEX5(HEX5),
		.HEX6(HEX6),
		.HEX7(HEX7)
	);

	//self checking testbench
	initial begin
		//checks first display at 0
		SW <= 18'b000000000000000000;
		#10;
		if (HEX0 !== 7'b1000000) begin
			$error("HEX0 %x was not 7'b1000000", HEX0);
		end

		//checks first display at 1
		SW <= 18'b000000000000000001;
		#10;
		if (HEX0 !== 7'b1111001) begin
			$error("HEX0 %x was not 7'b1111001", HEX0);
		end

		//checks first display at 2
		SW <= 18'b000000000000000010;
		#10;
		if (HEX0 !== 7'b0100100) begin
			$error("HEX0 %x was not 7'b0100100", HEX0);
		end

		//checks first display at 3
		SW <= 18'b000000000000000011;
		#10;
		if (HEX0 !== 7'b0110000) begin
			$error("HEX0 %x was not 7'b0110000", HEX0);
		end

		//checks first display at 4
		SW <= 18'b000000000000000100;
		#10;
		if (HEX0 !== 7'b0011001) begin
			$error("HEX0 %x was not 7'b0011001", HEX0);
		end

		//checks first display at 5
		SW <= 18'b000000000000000101;
		#10;
		if (HEX0 !== 7'b0010010) begin
			$error("HEX0 %x was not 7'b0010010", HEX0);
		end

		//checks first display at 6
		SW <= 18'b000000000000000110;
		#10;
		if (HEX0 !== 7'b0000010) begin
			$error("HEX0 %x was not 7'b0000010", HEX0);
		end

		//checks first display at 7
		SW <= 18'b000000000000000111;
		#10;
		if (HEX0 !== 7'b1111000) begin
			$error("HEX0 %x was not 7'b1111000", HEX0);
		end

		//checks first display at 8
		SW <= 18'b000000000000001000;
		#10;
		if (HEX0 !== 7'b0000000) begin
			$error("HEX0 %x was not 7'b0000000", HEX0);
		end

		//checks first display at 9
		SW <= 18'b000000000000001001;
		#10;
		if (HEX0 !== 7'b0011000) begin
			$error("HEX0 %x was not 7'b0011000", HEX0);
		end

		//checks first display at A
		SW <= 18'b000000000000001010;
		#10;
		if (HEX0 !== 7'b0001000) begin
			$error("HEX0 %x was not 7'b0001000", HEX0);
		end

		//checks first display at b
		SW <= 18'b000000000000001011;
		#10;
		if (HEX0 !== 7'b0000011) begin
			$error("HEX0 %x was not 7'b0000011", HEX0);
		end

		//checks first display at C
		SW <= 18'b000000000000001100;
		#10;
		if (HEX0 !== 7'b1000110) begin
			$error("HEX0 %x was not 7'b1000110", HEX0);
		end

		//checks first display at d
		SW <= 18'b000000000000001101;
		#10;
		if (HEX0 !== 7'b0100001) begin
			$error("HEX0 %x was not 7'b0100001", HEX0);
		end

		//checks first display at E
		SW <= 18'b000000000000001110;
		#10;
		if (HEX0 !== 7'b0000110) begin
			$error("HEX0 %x was not 7'b0000110", HEX0);
		end

		//checks first display at F
		SW <= 18'b000000000000001111;
		#10;
		if (HEX0 !== 7'b0001110) begin
			$error("HEX0 %x was not 7'b0001110", HEX0);
		end
		
		//checks second display at 7
		SW <= 18'b000000000001110000;
		#10;
		if (HEX1 !== 7'b1111000) begin
			$error("HEX1 %x was not 7'b1111000", HEX1);
		end

		//checks second display at d
		SW <= 18'b000000000011010000;
		#10;
		if (HEX1 !== 7'b0100001) begin
			$error("HEX1 %x was not 7'b0100001", HEX1);
		end

		//checks third display at A
		SW <= 18'b000000101000000000;
		#10;
		if (HEX2 !== 7'b0001000) begin
			$error("HEX2 %x was not 7'b0001000", HEX2);
		end

		//checks third display at 5
		SW <= 18'b000000010100000000;
		#10;
		if (HEX2 !== 7'b0010010) begin
			$error("HEX2 %x was not 7'b0010010", HEX2);
		end

		//checks fourth display at 4
		SW <= 18'b000100000000000000;
		#10;
		if (HEX3 !== 7'b0011001) begin
			$error("HEX3 %x was not 7'b0011001", HEX3);
		end

		//checks fourth display at C
		SW <= 18'b001100000000000000;
		#10;
		if (HEX3 !== 7'b1000110) begin
			$error("HEX3 %x was not 7'b1000110", HEX3);
		end

		//checks fifth display at 2
		SW <= 18'b100000000000000000;
		#10;
		if (HEX4 !== 7'b0100100) begin
			$error("HEX4 %x was not 7'b0100100", HEX4);
		end

		//checks fifth display at 3
		SW <= 18'b110000000000000000;
		#10;
		if (HEX4 !== 7'b0110000) begin
			$error("HEX4 %x was not 7'b0110000", HEX4);
		end

		//checks sixth display is 0
		SW <= 18'b000000000000000000;
		#10;
		if (HEX5 !== 7'b1000000) begin
			$error("HEX5 %x was not 7'b1000000", HEX5);
		end

		//checks seventh display is 0
		SW <= 18'b000000000000000000;
		#10;
		if (HEX6 !== 7'b1000000) begin
			$error("HEX6 %x was not 7'b1000000", HEX6);
		end

		//checks eigth display is 0
		SW <= 18'b000000000000000000;
		#10;
		if (HEX7 !== 7'b1000000) begin
			$error("HEX7 %x was not 7'b1000000", HEX7);
		end
	end
endmodule
