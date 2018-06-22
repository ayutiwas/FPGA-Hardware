module counter(clk,
			   out_real,
			   out_imag,
			   clk_out,
			   done,
			   alclr
			  );
	
	input			clk;
	output	[7:0]	out_real, out_imag;
	output			clk_out, done, alclr;
	
	reg		[7:0]	out_real, out_imag;
	reg		[1:0]	count_2;
	reg		[7:0]	count_8;
	reg				clk_out, done, flag, alclr;
	
	initial begin
		out_real = 8'd0;
		out_imag = 8'd0;
		count_8 = 8'd0;
		count_2 = 2'd0;
		flag = 1'b0;
	end
	
	always @(posedge clk) begin
		if (flag == 1'b0)
			alclr <= 1'b1;
		else
			alclr <= 1'b0;
		
		if(count_2 == 2'd0) begin
			out_real <= out_real + 8'd1;
			out_imag <= out_imag + 8'd1;
			count_8 <= count_8 + 8'd1;
			if(count_8 == 8'd255) begin
				done <= 1;
				flag <= 1'b0;
			end
			else begin
				done <= 0;
				flag <= 1'b1;
			end
			
		end
		count_2 <= count_2 + 2'd1;
		clk_out <= count_2[1];
	end
	
endmodule

		