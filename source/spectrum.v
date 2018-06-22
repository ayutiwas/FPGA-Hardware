module spectrum(sig_in,
				nvar,
				ready,
				done,
				standby,
				thres,
				out,
				clk
			   );
	
	input	signed	[12:0]	sig_in;
	input	signed	[11:0]	nvar;
	input					ready;
	input					done;
	input	signed	[11:0]	thres;
	inout					clk;
	output					out;
	output					standby;
	

	reg						out;
	reg						standby;
	integer 				count,total_int, comp_int ;
	reg		signed	[31:0]	total;
	
	initial
		begin
			count = 0;
			total <= 32'b0;
		end
	
	always @(sig_in or ready or done) begin
		if(ready == 1 && done == 0)
			begin
				standby <= 0;
				count = count + 1;
				total <= total + (sig_in * sig_in);
			end
		if(done == 1) 
			begin
				standby <= 0;
				total_int = total;
				comp_int = nvar*thres;
				if((32*total_int)>comp_int)
					begin
						out <= 1'b1;
					end
				else 
					begin
						out <= 1'b0;
					end
				total <= 32'b0;
				count = 0;
			end
		standby <= 1;
	end
endmodule

			
			