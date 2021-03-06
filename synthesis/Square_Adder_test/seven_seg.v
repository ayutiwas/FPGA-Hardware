module seven_seg(hex,
				 clk,
				 out
				);
	input	[3:0]	hex;
	input			clk;
	output	[6:0]	out;
	
	reg		[6:0]	out;
	
	always @(posedge clk) begin
		case(hex) 
			4'b0000 :      			//Hexadecimal 0
				out = 7'b1000000;
			4'b0001 :    			//Hexadecimal 1
				out = 7'b1111001  ;
			4'b0010 :  				// Hexadecimal 2
				out = 7'b0100100 ; 
			4'b0011 : 				// Hexadecimal 3	
				out = 7'b0110000 ;
			4'b0100 :				// Hexadecimal 4
				out = 7'b0011001 ;	
			4'b0101 :				// Hexadecimal 5
				out = 7'b0010010 ;  
			4'b0110 :				// Hexadecimal 6
				out = 7'b0000010 ;
			4'b0111 :				// Hexadecimal 7
				out = 7'b1111000;
			4'b1000 :				//Hexadecimal 8
				out = 7'b0000000;
			4'b1001 :    			//Hexadecimal 9
				out = 7'b0010000 ;
			4'b1010 :  				// Hexadecimal A
				out = 7'b0001000 ; 
			4'b1011 : 				// Hexadecimal B
				out = 7'b0000011;
			4'b1100 :				// Hexadecimal C
				out = 7'b1000110 ;
			4'b1101 :				// Hexadecimal D
				out = 7'b0100001 ;
			4'b1110 :				// Hexadecimal E
				out = 7'b0000110 ;
			4'b1111 :				// Hexadecimal F
				out = 7'b0001110 ;
		endcase
	end
endmodule
