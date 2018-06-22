
`timescale 1ns / 1ns
module \comparator_tb.v   ; 
 
  wire    out   ; 
  reg  [31:0]  noise_in   ; 
  reg  [31:0]  signal_in   ; 
  reg    ready   ; 
  reg  [11:0]  thres   ; 
  comparator  
   DUT  ( 
       .out (out ) ,
      .noise_in (noise_in ) ,
      .signal_in (signal_in ) ,
      .ready (ready ) ,
      .thres (thres ) ); 



// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 ns, Period = 0 ns
  initial
  begin
	  signal_in  = 32'b11111111111111111111111111111111  ;
	  noise_in  = 32'b00100000000000000000000000000000  ;
	  thres  = 12'b000011001100  ;
		 # 1 ;
	  ready  = 1'b1  ;
	 # 1 ;
	  ready  = 1'b0  ;
	 # 1 ;
	  
	  	  signal_in  = 32'd100  ;
	  noise_in  = 32'd100  ;
	  thres  = 12'd40  ;
		 # 1 ;
	  ready  = 1'b1  ;
	 # 1 ;
	   ready  = 1'b0  ;
	 # 1 ;
	 
	  
	  	  signal_in  = 32'd10000  ;
	  noise_in  = 32'd10  ;
	  thres  = 12'b10  ;
		 # 1 ;
	  ready  = 1'b1  ;
	 # 1 ;
	   ready  = 1'b0  ;
	 # 1 ;
	 
	  
// dumped values till 1 ns
  end

  initial
	#10 $stop;
endmodule