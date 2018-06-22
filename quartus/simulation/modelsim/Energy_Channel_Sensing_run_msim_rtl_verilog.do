transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/wsrg/verilog/research-ayush/source {/home/wsrg/verilog/research-ayush/source/comparator.v}
vlog -vlog01compat -work work +incdir+/home/wsrg/verilog/research-ayush/source {/home/wsrg/verilog/research-ayush/source/square_adder.v}

