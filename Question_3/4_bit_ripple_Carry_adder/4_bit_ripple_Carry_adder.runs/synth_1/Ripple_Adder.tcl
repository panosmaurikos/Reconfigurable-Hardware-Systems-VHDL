# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/Xilinx/Vivado_code/Question_3/4_bit_ripple_Carry_adder/4_bit_ripple_Carry_adder.cache/wt [current_project]
set_property parent.project_path F:/Xilinx/Vivado_code/Question_3/4_bit_ripple_Carry_adder/4_bit_ripple_Carry_adder.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_vhdl -library xil_defaultlib {
  {C:/Users/�����/Desktop/vivado code_1/�������_3/4_bit_ripple_Carry_adder/4_bit_ripple_Carry_adder.srcs/sources_1/new/full_adder_vhdl_code.vhd}
  {C:/Users/�����/Desktop/vivado code_1/�������_3/4_bit_ripple_Carry_adder/4_bit_ripple_Carry_adder.srcs/sources_1/new/Ripple_Adder.vhd}
}
synth_design -top Ripple_Adder -part xc7k70tfbv676-1
write_checkpoint -noxdef Ripple_Adder.dcp
catch { report_utilization -file Ripple_Adder_utilization_synth.rpt -pb Ripple_Adder_utilization_synth.pb }
