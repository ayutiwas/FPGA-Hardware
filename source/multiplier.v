// multiplier design 

module multi (num1,
			  num2,
			  out
			 );
// port definition
	input	[3:0]	num1;
	input	[3:0]	num2;
	output	[7:0]	out;
// Data types
	wire	[3:0]	num1;
	wire	[3:0]	num2;
	wire	[7:0]	out;
	assign out = num1 / num2;
	
endmodule
