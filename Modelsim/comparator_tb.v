
`timescale 1ns / 1ns
module \comparator_tb.v   ; 
 
  wire  reg  out   ; 
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
	  signal_in  = 32'b10000010000010000100001000001011  ;
	 # 1 ;
// dumped values till 1 ns
	#2 ;
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 ns, Period = 0 ns
  initial
  begin
	  noise_in  = 32'b00100000000000000000000000000000  ;
	 # 1 ;
// dumped values till 1 ns
	#2 ;
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 ns, Period = 0 ns
  initial
  begin
	  thres  = 12'b000011001100  ;
	 # 1 ;
// dumped values till 1 ns
	#2 ;
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 ns, Period = 0 ns
  initial
  begin
	  ready  = 1'b1  ;
	 # 1 ;
// dumped values till 1 ns
	#2 ;
  end

  initial
	#6 $stop;
endmodule
