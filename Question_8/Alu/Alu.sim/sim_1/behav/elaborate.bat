@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 60078f4f2b494c66b984edba607b91c8 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot simple_alu_tb_behav xil_defaultlib.simple_alu_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
