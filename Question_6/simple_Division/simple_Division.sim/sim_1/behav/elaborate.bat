@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 5f26150efc004123b8fe9841469bd027 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Division_vhdl_tb_behav xil_defaultlib.Division_vhdl_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
