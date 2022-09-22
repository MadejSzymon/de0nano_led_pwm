`timescale 1ns/100ps
module tb();
	
	logic i_board_clk;
	logic i_rst_n;
	logic [3:0] i_sw;
	
	logic [7:0] o_led;
	
	initial begin
		i_rst_n <= 1'b0;
		i_sw <= 4'b0000;
		i_board_clk <= 1'b0;
	end
	
	always begin
		#10;
		i_board_clk <= !i_board_clk;
	end
	
	top DUT(
		.*
	);
	
	initial begin
		repeat(10) @(posedge i_board_clk);
		i_rst_n <= 1'b1;
		repeat(10) @(posedge i_board_clk);
		i_sw <= 4'b1010;
		#2000;
		$stop();
	end
	
endmodule 