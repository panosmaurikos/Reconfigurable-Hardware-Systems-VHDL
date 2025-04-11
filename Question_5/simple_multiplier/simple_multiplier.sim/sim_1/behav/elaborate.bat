@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto c0ce63570f364380986305c0b1297588 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Multiplier_VHDL_tb_behav xil_defaultlib.Multiplier_VHDL_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
