
k
Command: %s
1870*	planAhead26
"open_checkpoint soc_top_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.020 . Memory (MB): peak = 303.195 ; gain = 0.0002default:defaulth px� 
W
Loading part %s157*device2$
xc7a200tfbg676-22default:defaultZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.3312default:default2
822.8122default:default2
0.0002default:defaultZ17-268h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
24712default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2 

pll/clk_in2default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:022default:default2
00:00:042default:default2
1654.1762default:default2
18.8672default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
2.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:022default:default2
00:00:042default:default2
1654.1762default:default2
18.8672default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0122default:default2
1654.1762default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 616 instances were transformed.
  RAM128X1D => RAM128X1D (MUXF7(x2), RAMD64E(x4)): 8 instances
  RAM128X1S => RAM128X1S (MUXF7, RAMS64E(x2)): 32 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 439 instances
  RAM64M => RAM64M (RAMD64E(x4)): 120 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 13 instances
  RAM64X1S => RAM64X1S (RAMS64E): 2 instances
  SRLC32E => SRL16E: 2 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2019.2 (64-bit)2default:default2
27088762default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:122default:default2
00:00:252default:default2
1654.1762default:default2
1350.9802default:defaultZ17-268h px� 
g
Command: %s
53*	vivadotcl26
"write_bitstream -force soc_top.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen2O
;D:/StudySoftware/Xilinx_Vivado_2019.2/Vivado/2019.2/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/A[29:0]3mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/B[17:0]3mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/A[29:0]3mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/B[17:0]3mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/A[29:0]3mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/B[17:0]3mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/A[29:0]3mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/B[17:0]3mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/P[47:0]3mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/P[47:0]3mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/P[47:0]3mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2default:default2default:default2�
 "�
9mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/P[47:0]3mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-4h px� 
�
�enum_AREG_0_connects_CEA1_GND_connects_CEA2_GND: %s: When DSP48E1 attribute AREG is set to 0, the CEA1 and CEA2 pins should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-20h px� 
�
�enum_AREG_0_connects_CEA1_GND_connects_CEA2_GND: %s: When DSP48E1 attribute AREG is set to 0, the CEA1 and CEA2 pins should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-20h px� 
�
�enum_AREG_0_connects_CEA1_GND_connects_CEA2_GND: %s: When DSP48E1 attribute AREG is set to 0, the CEA1 and CEA2 pins should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-20h px� 
�
�enum_AREG_0_connects_CEA1_GND_connects_CEA2_GND: %s: When DSP48E1 attribute AREG is set to 0, the CEA1 and CEA2 pins should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-20h px� 
�
�enum_BREG_0_connects_CEB1_GND_connects_CEB2_GND: %s: When DSP48E1 attribute BREG is set to 0, the CEB1 and CEB2 pins should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-24h px� 
�
�enum_BREG_0_connects_CEB1_GND_connects_CEB2_GND: %s: When DSP48E1 attribute BREG is set to 0, the CEB1 and CEB2 pins should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-24h px� 
�
�enum_BREG_0_connects_CEB1_GND_connects_CEB2_GND: %s: When DSP48E1 attribute BREG is set to 0, the CEB1 and CEB2 pins should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-24h px� 
�
�enum_BREG_0_connects_CEB1_GND_connects_CEB2_GND: %s: When DSP48E1 attribute BREG is set to 0, the CEB1 and CEB2 pins should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-24h px� 
�
�enum_CREG_0_connects_CEC_GND: %s: When the DSP48E1 CREG attribute is set to 0, the CEC input pin should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-29h px� 
�
�enum_CREG_0_connects_CEC_GND: %s: When the DSP48E1 CREG attribute is set to 0, the CEC input pin should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-29h px� 
�
�enum_CREG_0_connects_CEC_GND: %s: When the DSP48E1 CREG attribute is set to 0, the CEC input pin should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-29h px� 
�
�enum_CREG_0_connects_CEC_GND: %s: When the DSP48E1 CREG attribute is set to 0, the CEC input pin should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-29h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-30h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-30h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-30h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2�
 "z
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E12default:default8ZREQP-30h px� 
v
DRC finished with %s
1905*	planAhead28
$0 Errors, 13 Warnings, 20 Advisories2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
^
Writing bitstream %s...
11*	bitstream2!
./soc_top.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
142default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:182default:default2
00:00:312default:default2
2311.0162default:default2
656.8402default:defaultZ17-268h px� 


End Record