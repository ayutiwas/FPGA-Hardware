// megafunction wizard: %ALTMULT_COMPLEX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altmult_complex 

// ============================================================
// File Name: mul.v
// Megafunction Name(s):
// 			altmult_complex
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 17.0.0 Build 595 04/25/2017 SJ Lite Edition
// ************************************************************


//Copyright (C) 2017  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Intel and sold by Intel or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.


//altmult_complex CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone V" IMPLEMENTATION_STYLE="AUTO" PIPELINE=4 REPRESENTATION_A="SIGNED" REPRESENTATION_B="SIGNED" WIDTH_A=18 WIDTH_B=18 WIDTH_RESULT=36 clock dataa_imag dataa_real datab_imag datab_real result_imag result_real
//VERSION_BEGIN 17.0 cbx_alt_ded_mult_y 2017:04:19:09:17:27:SJ cbx_altera_mult_add 2017:04:19:09:17:27:SJ cbx_altera_mult_add_rtl 2017:04:19:09:17:27:SJ cbx_altmult_add 2017:04:19:09:17:27:SJ cbx_altmult_complex 2017:04:19:09:17:27:SJ cbx_arriav 2017:04:19:09:17:27:SJ cbx_cycloneii 2017:04:19:09:17:27:SJ cbx_lpm_add_sub 2017:04:19:09:17:27:SJ cbx_lpm_compare 2017:04:19:09:17:27:SJ cbx_lpm_mult 2017:04:19:09:17:27:SJ cbx_mgl 2017:04:19:10:26:36:SJ cbx_nadder 2017:04:19:09:17:27:SJ cbx_padd 2017:04:19:09:17:27:SJ cbx_parallel_add 2017:04:19:09:17:27:SJ cbx_stratix 2017:04:19:09:17:27:SJ cbx_stratixii 2017:04:19:09:17:27:SJ cbx_stratixv 2017:04:19:09:17:27:SJ cbx_util_mgl 2017:04:19:09:17:27:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mul_altmult_complex_02p
	( 
	clock,
	dataa_imag,
	dataa_real,
	datab_imag,
	datab_real,
	result_imag,
	result_real) ;
	input   clock;
	input   [17:0]  dataa_imag;
	input   [17:0]  dataa_real;
	input   [17:0]  datab_imag;
	input   [17:0]  datab_real;
	output   [35:0]  result_imag;
	output   [35:0]  result_real;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg  [17:0]  datab_real_input_reg;
	reg  [17:0]  datab_imag_input_reg;
	reg  [17:0]  dataa_real_input_reg;
	reg  [17:0]  dataa_imag_input_reg;
	reg  [35:0]  result_real_output_reg;
	reg  [35:0]  result_imag_output_reg;
	reg  [35:0]  result_real_extra0_reg;
	reg  [35:0]  result_imag_extra0_reg;
	reg  [35:0]  result_real_extra1_reg;
	reg  [35:0]  result_imag_extra1_reg;
	wire signed	[17:0]    datab_real_wire;
	wire signed	[17:0]    datab_imag_wire;
	wire signed	[17:0]    dataa_real_wire;
	wire signed	[17:0]    dataa_imag_wire;
	wire signed	[36:0]    result_real_wire;
	wire signed	[36:0]    result_imag_wire;
	wire signed	[18:0]    a1_wire;
	wire signed	[18:0]    a2_wire;
	wire signed	[18:0]    a3_wire;
	wire signed	[36:0]    p1_wire;
	wire signed	[36:0]    p2_wire;
	wire signed	[36:0]    p3_wire;


	// synopsys translate_off
	initial
		datab_real_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		datab_real_input_reg <= datab_real;
	// synopsys translate_off
	initial
		datab_imag_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		datab_imag_input_reg <= datab_imag;
	// synopsys translate_off
	initial
		dataa_real_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		dataa_real_input_reg <= dataa_real;
	// synopsys translate_off
	initial
		dataa_imag_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		dataa_imag_input_reg <= dataa_imag;
	// synopsys translate_off
	initial
		result_real_output_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		result_real_output_reg <= result_real_extra1_reg;
	// synopsys translate_off
	initial
		result_imag_output_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		result_imag_output_reg <= result_imag_extra1_reg;
	// synopsys translate_off
	initial
		result_real_extra0_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		result_real_extra0_reg <= result_real_wire[35:0];
	// synopsys translate_off
	initial
		result_imag_extra0_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		result_imag_extra0_reg <= result_imag_wire[35:0];
	// synopsys translate_off
	initial
		result_real_extra1_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		result_real_extra1_reg <= result_real_extra0_reg;
	// synopsys translate_off
	initial
		result_imag_extra1_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		
		result_imag_extra1_reg <= result_imag_extra0_reg;

	assign datab_real_wire = datab_real_input_reg;
	assign datab_imag_wire = datab_imag_input_reg;
	assign dataa_real_wire = dataa_real_input_reg;
	assign dataa_imag_wire = dataa_imag_input_reg;
	assign a1_wire = {datab_real_wire[17], datab_real_wire} - {datab_imag_wire[17], datab_imag_wire};
	assign p1_wire = a1_wire * dataa_imag_wire;
	assign a2_wire = {dataa_real_wire[17], dataa_real_wire} - {dataa_imag_wire[17], dataa_imag_wire};
	assign p2_wire = a2_wire * datab_real_wire;
	assign a3_wire = {dataa_real_wire[17], dataa_real_wire} + {dataa_imag_wire[17], dataa_imag_wire};
	assign p3_wire = a3_wire * datab_imag_wire;
	assign result_real_wire = p1_wire + p2_wire;
	assign result_imag_wire = p1_wire + p3_wire;
	assign result_real = ({result_real_output_reg});
	assign result_imag = ({result_imag_output_reg});

endmodule //mul_altmult_complex_02p
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module mul (
	clock,
	dataa_imag,
	dataa_real,
	datab_imag,
	datab_real,
	result_imag,
	result_real);

	input	  clock;
	input	[17:0]  dataa_imag;
	input	[17:0]  dataa_real;
	input	[17:0]  datab_imag;
	input	[17:0]  datab_real;
	output	[35:0]  result_imag;
	output	[35:0]  result_real;

	wire [35:0] sub_wire0;
	wire [35:0] sub_wire1;
	wire [35:0] result_imag = sub_wire0[35:0];
	wire [35:0] result_real = sub_wire1[35:0];

	mul_altmult_complex_02p	mul_altmult_complex_02p_component (
				.clock (clock),
				.dataa_imag (dataa_imag),
				.dataa_real (dataa_real),
				.datab_imag (datab_imag),
				.datab_real (datab_real),
				.result_imag (sub_wire0),
				.result_real (sub_wire1));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: IMPLEMENTATION_STYLE STRING "AUTO"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "4"
// Retrieval info: CONSTANT: REPRESENTATION_A STRING "SIGNED"
// Retrieval info: CONSTANT: REPRESENTATION_B STRING "SIGNED"
// Retrieval info: CONSTANT: WIDTH_A NUMERIC "18"
// Retrieval info: CONSTANT: WIDTH_B NUMERIC "18"
// Retrieval info: CONSTANT: WIDTH_RESULT NUMERIC "36"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa_imag 0 0 18 0 INPUT NODEFVAL "dataa_imag[17..0]"
// Retrieval info: USED_PORT: dataa_real 0 0 18 0 INPUT NODEFVAL "dataa_real[17..0]"
// Retrieval info: USED_PORT: datab_imag 0 0 18 0 INPUT NODEFVAL "datab_imag[17..0]"
// Retrieval info: USED_PORT: datab_real 0 0 18 0 INPUT NODEFVAL "datab_real[17..0]"
// Retrieval info: USED_PORT: result_imag 0 0 36 0 OUTPUT NODEFVAL "result_imag[35..0]"
// Retrieval info: USED_PORT: result_real 0 0 36 0 OUTPUT NODEFVAL "result_real[35..0]"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @dataa_imag 0 0 18 0 dataa_imag 0 0 18 0
// Retrieval info: CONNECT: @dataa_real 0 0 18 0 dataa_real 0 0 18 0
// Retrieval info: CONNECT: @datab_imag 0 0 18 0 datab_imag 0 0 18 0
// Retrieval info: CONNECT: @datab_real 0 0 18 0 datab_real 0 0 18 0
// Retrieval info: CONNECT: result_imag 0 0 36 0 @result_imag 0 0 36 0
// Retrieval info: CONNECT: result_real 0 0 36 0 @result_real 0 0 36 0
// Retrieval info: LIB_FILE: altera_mf
