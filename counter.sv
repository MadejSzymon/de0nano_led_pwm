
module counter(i_clk, i_rst_n, o_counter);
	
	input i_clk;
	input i_rst_n;
	
	output logic [3:0] o_counter = 0;
	
	always@(posedge i_clk) begin
		if(i_rst_n)
			o_counter <= o_counter + 1'b1;
		else
			o_counter <= 1'b0;
	end
	
endmodule 