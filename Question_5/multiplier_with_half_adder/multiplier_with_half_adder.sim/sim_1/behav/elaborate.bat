@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 47805e9c2bad4aa9868c48db8d415348 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot multiplier2x2_tb_behav xil_defaultlib.multiplier2x2_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
