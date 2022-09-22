
module comparator(i_clk, i_counter, i_sw, o_led_enb);
	
	input i_clk;
	input [3:0] i_sw;
	input [3:0] i_counter;
	
	output logic o_led_enb = 0;
	
	always@(posedge i_clk) begin
		if(i_sw > i_counter)
			o_led_enb <= 1'b1;
		else
			o_led_enb <= 1'b0;
	end
	
endmodule 