module control_unit(eoc_signal,
					eoc_noise,
					complete_signal,
					complete_noise,
					complete_comparator,
					done_signal,
					done_noise,
					start_comparator
				   );
	
	input	eoc_signal; 
	input	eoc_noise; 
	input	complete_signal; 
	input	complete_noise; 	
	input	complete_comparator;
	
	output	done_signal;
	output	done_noise;
	output	start_comparator;
	
	reg		[9:0]	counter1, counter2;
	reg				done_signal;
	reg				done_noise;
	reg				start_comparator;
	
	initial begin
		counter1 = 0;
		counter2 = 0;
	end
	
	
	always @(posedge eoc_signal) begin
		
		counter1 = counter1 + 1;
			
		if (counter1 == 2)
			done_signal <= 1;
		else
			done_signal <= 0;
	end
	
	always @(posedge eoc_noise) begin
		
		counter2 = counter2 + 1;
		
		if (counter2 == 2)
			done_noise <= 1;
		else
			done_noise <= 0;
	end
	
	always @(posedge complete_signal or posedge complete_noise) begin
		start_comparator <= complete_signal & complete_noise;
	end
endmodule
