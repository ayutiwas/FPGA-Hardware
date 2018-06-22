
`timescale 1ns / 1ns
module \tb.v   ; 
 
  wire  reg  complete   ; 
  wire  [29:0]  signal_out   ; 
  reg    ready   ; 
  reg  [7:0]  signal_in_imag   ; 
  reg    done   ; 
  reg  [7:0]  signal_in_real   ; 
  square_adder  
   DUT  ( 
       .complete (complete ) ,
      .signal_out (signal_out ) ,
      .ready (ready ) ,
      .signal_in_imag (signal_in_imag ) ,
      .done (done ) ,
      .signal_in_real (signal_in_real ) ); 


	initial begin
	
		signal_in_real = 8'd126;
		signal_in_imag = 8'd126;
		done = 1'b0;
		# 2;
		signal_in_real = 8'd127;
		signal_in_imag = 8'd127;
		done = 1'b0;
		# 2;
		signal_in_real = 8'd128;
		signal_in_imag = 8'd128;
		done = 1'b0;
		# 2;
		signal_in_real = 8'd129;
		signal_in_imag = 8'd129;
		done = 1'b0;
		# 2;
		signal_in_real = 8'd130;
		signal_in_imag = 8'd130;
		done = 1'b0;
		# 2;
		# 2;
		$stop
	end
	
	always #1 ready = ~ready;
		
endmodule
