  
`timescale 1ps / 1ps
module \square_adder_tb.v   ; 
 
  reg  [12:0]  signal_in   ; 
  wire    standby   ; 
  wire  [31:0]  signal_out   ; 
  reg    ready   ; 
  reg    done   ; 
  square_adder  
   DUT  ( 
       .signal_in (signal_in ) ,
      .standby (standby ) ,
      .signal_out (signal_out ) ,
      .ready (ready ) ,
      .done (done ) ); 



// "Constant Pattern"
// Start Time = 0 ps, End Time = 100 ps, Period = 0 ps
  initial
  begin
	  signal_in  = 13'b0000000001100  ;
    ready = 1;
    done = 0;
    # 4000;
    ready = 0;
    # 4000;
    signal_in  = 13'b0000000001111  ;
    ready = 1;
    # 4000;
    ready = 0;
    # 4000;
    signal_in  = 13'b0000000001101  ;
    ready = 1;
    # 4000;
    ready = 0;
    # 4000;
    done = 1;
    # 16000
    $finish;
  end
endmodule;

