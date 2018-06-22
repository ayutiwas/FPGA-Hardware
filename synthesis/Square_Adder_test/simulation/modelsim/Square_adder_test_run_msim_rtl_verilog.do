transcript on
if ![file isdirectory Square_adder_test_iputf_libs] {
	file mkdir Square_adder_test_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/pll_sim/pll.vo"

vlog -vlog01compat -work work +incdir+/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/source {/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/source/main.v}
vlog -vlog01compat -work work +incdir+/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/source {/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/source/counter.v}
vlog -vlog01compat -work work +incdir+/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/source {/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/source/square_adder.v}
vlog -vlog01compat -work work +incdir+/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/source {/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/source/clock_divider.v}
vlog -vlog01compat -work work +incdir+/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test {/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/seven_seg.v}

vlog -vlog01compat -work work +incdir+/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/simulation/modelsim {/home/wsrg/verilog/research-ayush/synthesis/Square_Adder_test/simulation/modelsim/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
