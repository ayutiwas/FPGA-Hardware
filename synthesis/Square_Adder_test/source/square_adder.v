module square_adder(signal_in_real,
					signal_in_imag,
					ready,
					done,
					signal_out,
					complete
					);
	
	input			[7:0]	signal_in_real;
	input			[7:0]	signal_in_imag;
	input					ready, done;
	
	output	signed	[29:0]	signal_out;
	output					complete;
	
	reg		signed	[8:0]	temp_real,temp_imag;
	reg		signed	[29:0]	signal_out;
	reg						complete, flag;
	
	reg		signed	[29:0]	total;
	
	initial
		begin
			total = 30'd0;
			//counter = 0;
			temp_real = 9'd0;
			temp_imag = 9'd0;
			flag = 1'b1;
		end
	
	always @(posedge ready or posedge done) begin		
		if(ready == 1 )
			begin
				if(flag == 0)
					total <= 30'd0;
				if(done == 0) begin
					//counter <= counter + 1;
					temp_real <= (signal_in_real * 9'b000000010) - 9'b011111111;
					temp_imag <= (signal_in_imag * 9'b000000010) - 9'b011111111;
					total <= total + temp_real * temp_real + temp_imag * temp_imag;
					signal_out <= total;
					complete <= 1'd0;
				end
			end
			
		
		if(done == 1 )
			begin

				signal_out <= total;
				complete <= 1'd1;
				//counter <= 0;
				flag <= 1'd0;
			end

	end
	
endmodule
					
				
	
