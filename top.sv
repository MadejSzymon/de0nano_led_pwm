
module top(i_board_clk, i_rst_n, i_sw, o_led);
	
	input i_board_clk;
	input i_rst_n;
	input [3:0] i_sw;
	
	logic [3:0] w_counter;
	logic w_led_enb;
	
	output [7:0] o_led;
	
	
	counter counter(
	.i_clk(i_board_clk),
	.i_rst_n(i_rst_n),
	.o_counter(w_counter)
	);
	
	comparator comparator(
	.i_clk(i_board_clk),
	.i_counter(w_counter),
	.i_sw(i_sw),
	.o_led_enb(w_led_enb)
	);
	
	assign o_led = {8{w_led_enb}};
	
endmodule 