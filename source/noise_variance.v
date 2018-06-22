module variance(signal_in,
				ready,
				done,
				n_var,
				standby);
	
	input	signed	[12:0]	signal_in;
	input					ready;
	input					done;
	output	signed	[12:0]	n_var;
	output					standby;
	
	reg		signed	[31:0]	total;
	integer					count,a,diff,res;
	integer					val_array[0:255];
	reg		signed	[12:0]	n_var;
	reg						standby;
	
	initial
		begin
			count = 0;
			total <= 32'b0;
		end
	always @(signal_in or ready or done) begin
		
		if(ready == 1 && done == 0)
			begin
				standby <= 0;
				val_array[count] <= signal_in;
				total <= total + signal_in;
				count = count + 1;
			end
		if(done == 1)
			begin
				standby <= 0;
				res = 0;
				for(a = 0; a < count; a = a + 1)
					begin
						diff = total - (count * val_array[a]);
						res = res + (diff * diff);
					end
				res = res/(count * count * count);
				n_var <= res;
				total <= 32'b0;
				count = 0;
			end
		standby <= 1;
	end
endmodule
			
	