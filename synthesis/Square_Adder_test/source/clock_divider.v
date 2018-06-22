module clock_divider(clk_in,
					 clk_out
					);
	
	output	clk_out;
	input	clk_in;
	
	reg	[24:0]	counter;
	reg		clk_out;
	
	initial begin
//    	counter = 0;
    	clk_out = 0;
	end
	
	
	always @(posedge clk_in) begin
    	if (counter == 0) begin
			
        	counter <= 25'd2499999;
        	clk_out <= ~clk_out;
			
    	end else begin
			
        	counter <= counter - 25'd1;
			
    	end
	end
	
endmodule