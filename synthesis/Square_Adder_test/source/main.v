module main(clk_in,
			seg0,
			seg1,
			seg2,
			seg3,
			seg4,
			seg5
		   );
	
	input 				clk_in;

	output	[6:0]		seg0, seg1, seg2, seg3, seg4, seg5;
	
	wire				out, clk,alclr;
	wire	[11:0]	thres;
	
	wire	[7:0]		out_real, out_imag;
	wire				clk_out, done, comp_signal;
	wire	[29:0]	signal, noise;
	
	
	clock_divider clock(.clk_in(clk_in),
						.clk_out(clk)
					   );
	
	counter counter_1(.clk(clk),
					  .out_real(out_real),
					  .out_imag(out_imag),
					  .clk_out(clk_out),
					  .alclr(alclr)
					 );
	
	square_adder sq_signal(.datar(out_real),
						   .datai(out_imag),
						   .clk(clk_out),
						   .aclr(alclr),
						   .adder_out(signal)
						  );
	
	seven_seg s0(.hex(out_real[3:0]),
				 .clk(clk_in),
				 .out(seg0)
				);
	
	seven_seg s1(.hex(out_real[7:4]),
				 .clk(clk_in),
				 .out(seg1)
				);
	
	seven_seg s2(.hex(signal[3:0]),
				 .clk(clk_in),
				 .out(seg2)
				);
	
	seven_seg s3(.hex(signal[7:4]),
				 .clk(clk_in),
				 .out(seg3)
				);
	
	seven_seg s4(.hex(signal[11:8]),
				 .clk(clk_in),
				 .out(seg4)
				);
	
	seven_seg s5(.hex(signal[15:12]),
				 .clk(clk_in),
				 .out(seg5)
				);
	
endmodule
