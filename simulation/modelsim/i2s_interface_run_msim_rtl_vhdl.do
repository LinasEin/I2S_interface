transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/15.0/projects/i2s_interface/db {C:/altera/15.0/projects/i2s_interface/db/bclk_altpll.v}
vcom -93 -work work {C:/altera/15.0/projects/i2s_interface/src/i2s_interface.vhd}
vcom -93 -work work {C:/altera/15.0/projects/i2s_interface/src/bclk.vhd}

vcom -93 -work work {C:/altera/15.0/projects/i2s_interface/simulation/modelsim/i2s_interface.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
