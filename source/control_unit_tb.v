
`timescale 1ps / 1ps
module \control_unit_tb.v   ; 
 
  reg    complete_comparator   ; 
  reg    eoc_noise   ; 
  reg    eoc_signal   ; 
  wire   start_comparator   ; 
  reg    complete_noise   ; 
  reg    complete_signal   ; 
  wire   done_noise   ; 
  wire   done_signal   ; 
  control_unit  
   DUT  ( 
       .complete_comparator (complete_comparator ) ,
      .eoc_noise (eoc_noise ) ,
      .eoc_signal (eoc_signal ) ,
      .start_comparator (start_comparator ) ,
      .complete_noise (complete_noise ) ,
      .complete_signal (complete_signal ) ,
      .done_noise (done_noise ) ,
      .done_signal (done_signal ) ); 



// "Constant Pattern"
// Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  initial
  begin
	  eoc_signal  = 1'b1  ;
	  eoc_noise  = 1'b1  ;
	  #1000
	  eoc_signal  = 1'b0  ;
	  eoc_noise  = 1'b0  ;
	  #1000
	  eoc_signal  = 1'b1  ;
	  eoc_noise  = 1'b1  ;
	  #1000
	  eoc_signal  = 1'b0  ;
	  eoc_noise  = 1'b0  ;
	  
	  complete_signal  = 1'b1  ;
	  complete_noise  = 1'b1  ;
	  complete_comparator  = 1'b1  ;
  end
	
	
  initial
	#5000 $stop;
endmodule
