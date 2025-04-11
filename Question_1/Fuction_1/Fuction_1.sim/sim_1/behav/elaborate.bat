@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 6b65752dd5ae4ce3ab738264fd9d5781 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Fuction1_tb_behav xil_defaultlib.Fuction1_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
