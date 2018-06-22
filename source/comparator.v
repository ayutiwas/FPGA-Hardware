module comparator(signal_in,
				  noise_in,
				  thres,
				  ready,
				  out
				 );
	
	input				[31:0]	signal_in;
	input				[31:0]	noise_in;
	input				[11:0]	thres;
	input							ready;
	
	output						out;
	wire				[63:0]	pro1, pro2;
	reg							out;
	
	assign pro1 = 30'd17 * signal_in;
	assign pro2 = noise_in * thres;
	
	
	always @(posedge ready)	begin
		if((pro1) > (pro2))
			out <= 1;
		else
			out <= 0;
	end
endmodule
