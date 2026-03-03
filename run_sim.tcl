read_verilog design.v
read_verilog tb.v

synth_design -top four_bit_adder

save_project_as -force C:/vivado_agent/sim_proj.xpr

set_property top tb [get_filesets sim_1]

launch_simulation

log_vcd -file C:/vivado_agent/waveform.vcd

run all

close_vcd

quit
