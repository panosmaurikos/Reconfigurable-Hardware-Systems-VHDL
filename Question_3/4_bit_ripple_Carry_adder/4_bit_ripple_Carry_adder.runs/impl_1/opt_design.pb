
L
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7k70t2default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7k70t2default:defaultZ17-349h px
k
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px
O

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
R
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px
a
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.070 . Memory (MB): peak = 435.398 ; gain = 4.8202default:defaulth px
B
%Done setting XDC timing constraints.
35*timingZ38-35h px
^

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px
f

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
H
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px
8
&Phase 1 Retarget | Checksum: ca2fd4d0
*commonh px
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.009 . Memory (MB): peak = 888.242 ; gain = 0.0002default:defaulth px
r

Phase %s%s
101*constraints2
2 2default:default2(
Constant Propagation2default:defaultZ18-101h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
F
Eliminated %s cells.
10*opt2
02default:defaultZ31-10h px
D
2Phase 2 Constant Propagation | Checksum: ca2fd4d0
*commonh px
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.010 . Memory (MB): peak = 888.242 ; gain = 0.0002default:defaulth px
c

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px
Q
 Eliminated %s unconnected nets.
12*opt2
02default:defaultZ31-12h px
R
!Eliminated %s unconnected cells.
11*opt2
02default:defaultZ31-11h px
5
#Phase 3 Sweep | Checksum: ca2fd4d0
*commonh px
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.013 . Memory (MB): peak = 888.242 ; gain = 0.0002default:defaulth px
^

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.001 . Memory (MB): peak = 888.242 ; gain = 0.0002default:defaulth px
F
4Ending Logic Optimization Task | Checksum: ca2fd4d0
*commonh px
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.015 . Memory (MB): peak = 888.242 ; gain = 0.0002default:defaulth px
=
+Implement Debug Cores | Checksum: ca2fd4d0
*commonh px
:
(Logic Optimization | Checksum: ca2fd4d0
*commonh px
^

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px
p
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
3.132default:defaultZ34-132h px
F
4Ending Power Optimization Task | Checksum: ca2fd4d0
*commonh px
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.013 . Memory (MB): peak = 888.242 ; gain = 0.0002default:defaulth px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
202default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px
Y
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:00:102default:default2
00:00:112default:default2
888.2422default:default2
459.6682default:defaultZ17-268h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
�
#The results of DRC are in file %s.
168*coretcl2�
yF:/Xilinx/Vivado_code/Question_3/4_bit_ripple_Carry_adder/4_bit_ripple_Carry_adder.runs/impl_1/Ripple_Adder_drc_opted.rptyF:/Xilinx/Vivado_code/Question_3/4_bit_ripple_Carry_adder/4_bit_ripple_Carry_adder.runs/impl_1/Ripple_Adder_drc_opted.rpt2default:default8Z2-168h px


End Record