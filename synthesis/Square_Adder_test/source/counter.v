module counter(clk,
			   out_real,
			   out_imag,
			   clk_out,
			   done
			  );
	
	input			clk;
	output	[7:0]	out_real, out_imag;
	output			clk_out, done;
	
	reg		[7:0]	out_real, out_imag;
	reg		[1:0]	count_2,count;
	reg		[7:0]	count_8;
	reg				clk_out, done;
	
	initial begin
		out_real = 8'd0;
		out_imag = 8'd0;
		count_8 = 8'd0;
		count_2 = 2'd0;
		count = 2'd0;
	end
	
	always @(posedge clk) begin
		if(count_2 == 2'd0) begin
			out_real <= count + 8'd126;
			out_imag <= count + 8'd126;
			count_8 <= count_8 + 8'd1;
			count<= count + 2'd1;
			if(count_8 == 8'd255)
				done <= 1;
			else
				done <= 0;
		end
		count_2 <= count_2 + 2'd1;
		clk_out <= count_2[1];
	end
	
endmodule

		