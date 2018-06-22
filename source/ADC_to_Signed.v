module ADC_to_Signed(signal_in_real,
					 signal_in_imag,
					 eoc,
					 signal_out_real,
					 signal_out_imag,
					 done);
	
	input			[7:0]	signal_in_real, signal_in_imag;
	input					eoc;
	
	output			[8:0]	signal_out_real, signal_out_imag;
	output					done;
	
	reg		signed	[8:0]	signal_out_real, signal_out_imag;
	reg						done;
	
	
	always @(posedge eoc) begin
		
		done <= 0;
		signal_out_real <= (signal_in_real * 2 ) - (255 );
		signal_out_imag <= (signal_in_imag * 2 ) - (255 );
		done <= 1;
	end
endmodule