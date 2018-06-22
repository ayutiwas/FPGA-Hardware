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
	
	wire	signed	[8:0]	temp_real,temp_imag;
	wire	signed	[29:0]	product;
	reg		signed	[29:0]	signal_out;
	reg						complete, flag;
	
	reg		signed	[29:0]	total, old_value;
	
	initial begin
		flag = 1'b0;
		old_value = 30'd0;
		total = 30'b0;
	end
	
	
	assign temp_real = (signal_in_real * 9'b000000010) - 9'b011111111;
	assign temp_imag = (signal_in_imag * 9'b000000010) - 9'b011111111;
	assign product = temp_real * temp_real + temp_imag * temp_imag;
	
	always @(posedge ready or posedge done) begin		
		if(ready == 1 )
			begin
				if(flag == 1)
					old_value <= 0;
				if(done == 0) begin
					total <= old_value + product;
					complete <= 1'd0;
				end
			end
		if(done == 1 )
			begin

				signal_out <= total;
				complete <= 1'd1;
				//counter <= 0;
				flag <= 1'd1;
			end

	end
	
	always@(total)
		old_value <= total;
	
endmodule
					
				
	
