@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 854889a699544704a3ee4e727388f928 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Ripple_Adder_tb_behav xil_defaultlib.Ripple_Adder_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
