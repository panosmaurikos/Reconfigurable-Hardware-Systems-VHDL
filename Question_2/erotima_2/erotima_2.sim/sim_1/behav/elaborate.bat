@echo off
set xv_path=F:\\Xilinx\\egkatastasi\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto ceab51c30ee446b9899fbed86bc2bdd9 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Fuction_full_tb_behav xil_defaultlib.Fuction_full_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
