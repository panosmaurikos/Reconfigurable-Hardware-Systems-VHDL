@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 0a46578074a34112a05a634e75640b0e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Division_tb_behav xil_defaultlib.Division_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
