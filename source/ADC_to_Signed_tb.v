
`timescale 1ps / 1ps
module \ADC_to_Signed_tb.v   ; 
 
	reg  [7:0]  signal_in   ; 
	wire  [8:0]  signal_out   ; 
  wire    done   ; 
  reg    eoc   ; 
  ADC_to_Signed  
   DUT  ( 
       .signal_in (signal_in ) ,
      .signal_out (signal_out ) ,
      .done (done ) ,
      .eoc (eoc ) ); 



// "Constant Pattern"
// Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  initial
  begin
	  signal_in  = 8'b00000100  ;
	  eoc = 1;
	 # 4000 ;
	  eoc = 0;
	  # 4000;
	  	  signal_in  = 8'b00100100  ;
	  eoc = 1;
	 # 4000 ;
	  eoc = 0;
	  # 4000;
	  	  signal_in  = 8'b10000100  ;
	  eoc = 1;
	 # 4000 ;
	  eoc = 0;
	  # 4000;
	  	  signal_in  = 8'b00000000  ;
	  eoc = 1;
	 # 4000 ;
	  eoc = 0;
	  # 4000;
	  	  signal_in  = 8'b11111111  ;
	  eoc = 1;
	 # 4000 ;
	  eoc = 0;
	  # 4000;
  		$stop;
  end
	
endmodule
