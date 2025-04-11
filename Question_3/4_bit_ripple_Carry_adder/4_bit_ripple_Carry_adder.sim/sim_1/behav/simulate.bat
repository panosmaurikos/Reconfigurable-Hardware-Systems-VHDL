@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xsim Ripple_Adder_tb_behav -key {Behavioral:sim_1:Functional:Ripple_Adder_tb} -tclbatch Ripple_Adder_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
