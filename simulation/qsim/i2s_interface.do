onerror {exit -code 1}
vlib work
vlog -work work i2s_interface.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.i2s_interface_vlg_vec_tst -voptargs="+acc"
vcd file -direction i2s_interface.msim.vcd
vcd add -internal i2s_interface_vlg_vec_tst/*
vcd add -internal i2s_interface_vlg_vec_tst/i1/*
run -all
quit -f
