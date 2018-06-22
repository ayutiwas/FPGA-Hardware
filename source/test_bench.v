`timescale 1ps / 1ps

module test_bench();
	
	reg 			[7:0]	signal_in_real, signal_in_imag, 
							noise_in_real, noise_in_imag;
	reg				[11:0]	thres;
	
	reg						ready_signal, done_signal,
							ready_noise, done_noise;
	
	wire			[29:0]	signal_out, noise_out;
	wire					standby_signal, complete_signal,
							standby_noise,	complete_noise;
	reg						ready_comp;
	wire					comp_out, comp_done;
	
	square_adder square_adder_signal(.signal_in_real(signal_in_real),
									 .signal_in_imag(signal_in_imag),
									 .ready(ready_signal),
									 .done(done_signal),
									 .signal_out(signal_out),
									 .standby(standby_signal),
									 .complete(complete_signal)
									);
	
	square_adder square_adder_noise(.signal_in_real(noise_in_real),
									.signal_in_imag(noise_in_imag),
									.ready(ready_noise),
									.done(done_noise),
									.signal_out(noise_out),
									.standby(standby_noise),
									.complete(complete_noise)
									);
	
	comparator comp(.signal_in(signal_out),
					.noise_in(noise_out),
					.thres(thres),
					.ready(ready_comp),
					.out(comp_out),
					.done(comp_done)
				   );
	initial begin
		#10
		signal_in_real = 8'b00110011;
		signal_in_imag = 8'b00110011;
		noise_in_real = 8'b00110011;
		noise_in_imag = 8'b00110011;
		ready_signal = 1;
		done_signal = 0;
		ready_noise = 1;
		done_noise = 0;
		#1000
		ready_signal = 0;
		ready_noise = 0;
		#1000
		
		signal_in_real = 8'b10110011;
		signal_in_imag = 8'b01110011;
		noise_in_real = 8'b00110111;
		noise_in_imag = 8'b00111011;
		ready_signal = 1;
		done_signal = 0;
		ready_noise = 1;
		done_noise = 0;
		#1000
		ready_signal = 0;
		ready_noise = 0;
		#1000
		
		done_signal = 1;
		done_noise =1;
		
		#1000
		
		thres = 12'b000011000001;
		ready_comp = 1;
		
		#1000
		$stop;
	end
	
endmodule

						