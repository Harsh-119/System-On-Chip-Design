
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/utils_1/imports/synth_1/AHBLITE_SYS.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2h
TC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/utils_1/imports/synth_1/AHBLITE_SYS.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
y
Command: %s
53*	vivadotcl2H
4synth_design -top AHBLITE_SYS -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
274522default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
TMS2default:default2
wire2default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
1312default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
TDO2default:default2
wire2default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
1322default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
TCK2default:default2
wire2default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
1722default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
TDI2default:default2
wire2default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
1742default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1205.418 ; gain = 409.086
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
AHBLITE_SYS2default:default2
 2default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
372default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2'
CORTEXM0INTEGRATION2default:default2
 2default:default2u
_C:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/CORTEXM0INTEGRATION.v2default:default2
292default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2$
cortexm0ds_logic2default:default2
 2default:default2r
\C:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/cortexm0ds_logic.v2default:default2
272default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
cortexm0ds_logic2default:default2
 2default:default2
02default:default2
12default:default2r
\C:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/cortexm0ds_logic.v2default:default2
272default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
CORTEXM0INTEGRATION2default:default2
 2default:default2
02default:default2
12default:default2u
_C:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/CORTEXM0INTEGRATION.v2default:default2
292default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22default:default2
HRESP2default:default2
12default:default2'
CORTEXM0INTEGRATION2default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
1622default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
AHBDCD2default:default2
 2default:default2h
RC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBDCD.v2default:default2
382default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AHBDCD2default:default2
 2default:default2
02default:default2
12default:default2h
RC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBDCD.v2default:default2
382default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AHBMUX2default:default2
 2default:default2h
RC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBMUX.v2default:default2
382default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AHBMUX2default:default2
 2default:default2
02default:default2
12default:default2h
RC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBMUX.v2default:default2
382default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AHB2MEM2default:default2
 2default:default2j
TC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHB2BRAM.v2default:default2
112default:default8@Z8-6157h px� 
�
%s, ignoring3604*oasys2�
scould not open $readmem data file 'code.hex'; please make sure the file is added to project and has read permission2default:default2j
TC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHB2BRAM.v2default:default2
402default:default8@Z8-4445h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AHB2MEM2default:default2
 2default:default2
02default:default2
12default:default2j
TC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHB2BRAM.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AHB2LED2default:default2
 2default:default2i
SC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHB2LED.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AHB2LED2default:default2
 2default:default2
02default:default2
12default:default2i
SC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHB2LED.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AHBLITE_SYS2default:default2
 2default:default2
02default:default2
12default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
372default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
APhase_HRADDR_reg2default:default2j
TC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHB2BRAM.v2default:default2
612default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

rHADDR_reg2default:default2i
SC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHB2LED.v2default:default2
382default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

rHSIZE_reg2default:default2i
SC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHB2LED.v2default:default2
412default:default8@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
TCK2default:default2
AHBLITE_SYS2default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
1722default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
TDI2default:default2
AHBLITE_SYS2default:default2m
WC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/sources_1/imports/New folder/AHBLITE_SYS.v2default:default2
1742default:default8@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[31]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[30]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[29]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[28]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[27]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[26]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[25]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[24]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[23]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[22]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[21]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[20]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[19]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[18]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[17]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[16]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[15]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[14]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[13]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[12]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[11]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[10]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[9]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[8]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[7]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[6]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[5]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[4]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[3]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[2]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[1]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[0]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HSIZE[2]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HSIZE[1]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HSIZE[0]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[31]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[30]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[29]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[28]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[27]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[26]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[25]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[24]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[23]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[22]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[21]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[20]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[19]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[18]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[17]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[16]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[15]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[14]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[13]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[12]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[11]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

HWDATA[10]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HWDATA[9]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HWDATA[8]2default:default2
AHB2LED2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[23]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[22]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[21]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[20]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[19]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[18]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[17]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[16]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[15]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[14]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[13]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[12]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[11]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	HADDR[10]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[9]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[8]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[7]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[6]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[5]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[4]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[3]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[2]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[1]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HADDR[0]2default:default2
AHBDCD2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FCLK2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
nTRST2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TDI2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
WICENREQ2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SE2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1565.316 ; gain = 768.984
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1565.316 ; gain = 768.984
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1565.316 ; gain = 768.984
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0822default:default2
1565.3162default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2}
gC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/constrs_1/imports/New folder/Lab3_Nexys-A7-100T-Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2}
gC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/constrs_1/imports/New folder/Lab3_Nexys-A7-100T-Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2{
gC:/Users/Student/Desktop/277a/Lab3/Lab3.srcs/constrs_1/imports/New folder/Lab3_Nexys-A7-100T-Master.xdc2default:default21
.Xil/AHBLITE_SYS_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1588.8872default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0422default:default2
1588.8872default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   34 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   31 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   30 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   24 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 72    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1339  
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
k
%s
*synth2S
?	             128K Bit	(4096 X 32 bit)          RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 404   
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
h
%s
*synth2P
<DSP Report: Generating DSP Affpw60, operation Mode is: A*B.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: operator Affpw60 is absorbed into DSP Affpw60.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: operator Affpw60 is absorbed into DSP Affpw60.
2default:defaulth p
x
� 
h
%s
*synth2P
<DSP Report: Generating DSP Affpw60, operation Mode is: A*B.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: operator Affpw60 is absorbed into DSP Affpw60.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: operator Affpw60 is absorbed into DSP Affpw60.
2default:defaulth p
x
� 
s
%s
*synth2[
GDSP Report: Generating DSP Affpw60, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: operator Affpw60 is absorbed into DSP Affpw60.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: operator Affpw60 is absorbed into DSP Affpw60.
2default:defaulth p
x
� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FCLK2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
nTRST2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
TDI2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
WICENREQ2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SE2default:default2$
cortexm0ds_logic2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:52 ; elapsed = 00:00:59 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
d
%s*synth2L
8
Block RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name | RTL Object          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px� 
�
%s*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|AHBLITE_SYS | uAHB2RAM/memory_reg | 4 K x 32(READ_FIRST)   | W |   | 4 K x 32(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      | 
2default:defaulth px� 
�
%s*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px� 
�
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px� 
�
%s*synth2�
�+-----------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name      | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
�+-----------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|cortexm0ds_logic | A*B            | 15     | 15     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|cortexm0ds_logic | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|cortexm0ds_logic | (PCIN>>17)+A*B | 15     | 15     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�+-----------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:59 ; elapsed = 00:01:06 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:01:00 ; elapsed = 00:01:07 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!
Block RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Object          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|AHBLITE_SYS | uAHB2RAM/memory_reg | 4 K x 32(READ_FIRST)   | W |   | 4 K x 32(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2)
uAHB2RAM/memory_reg_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2)
uAHB2RAM/memory_reg_12default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2)
uAHB2RAM/memory_reg_22default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2)
uAHB2RAM/memory_reg_32default:default2
Block2default:defaultZ8-7052h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:01:02 ; elapsed = 00:01:09 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:01:05 ; elapsed = 00:01:12 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:05 ; elapsed = 00:01:12 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:05 ; elapsed = 00:01:12 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:05 ; elapsed = 00:01:12 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:06 ; elapsed = 00:01:12 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:06 ; elapsed = 00:01:12 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
� 
�
%s
*synth2�
�+-----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name      | DSP Mapping  | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+-----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|cortexm0ds_logic | A*B          | 15     | 18     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|cortexm0ds_logic | A*B          | 17     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|cortexm0ds_logic | PCIN>>17+A*B | 30     | 15     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+-----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |     2|
2default:defaulth px� 
F
%s*synth2.
|2     |CARRY4   |    44|
2default:defaulth px� 
F
%s*synth2.
|3     |DSP48E1  |     3|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT1     |    33|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT2     |   276|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT3     |   215|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT4     |   285|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT5     |   553|
2default:defaulth px� 
F
%s*synth2.
|9     |LUT6     |  1783|
2default:defaulth px� 
F
%s*synth2.
|10    |MUXF7    |     3|
2default:defaulth px� 
F
%s*synth2.
|11    |MUXF8    |     1|
2default:defaulth px� 
F
%s*synth2.
|12    |RAMB36E1 |     4|
2default:defaulth px� 
F
%s*synth2.
|13    |FDCE     |   214|
2default:defaulth px� 
F
%s*synth2.
|14    |FDPE     |    63|
2default:defaulth px� 
F
%s*synth2.
|15    |FDRE     |   564|
2default:defaulth px� 
F
%s*synth2.
|16    |FDSE     |    80|
2default:defaulth px� 
F
%s*synth2.
|17    |IBUF     |     2|
2default:defaulth px� 
F
%s*synth2.
|18    |OBUF     |     8|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:06 ; elapsed = 00:01:12 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:46 ; elapsed = 00:01:10 . Memory (MB): peak = 1588.887 ; gain = 768.984
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:06 ; elapsed = 00:01:13 . Memory (MB): peak = 1588.887 ; gain = 792.555
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0282default:default2
1588.8872default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
552default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
AHBLITE_SYS2default:default2$
cortexm0ds_logic2default:defaultZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1588.8872default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
d4b76f012default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
472default:default2
1012default:default2
12default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:102default:default2
00:01:222default:default2
1588.8872default:default2
1186.7662default:defaultZ17-268h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2X
DC:/Users/Student/Desktop/277a/Lab3/Lab3.runs/synth_1/AHBLITE_SYS.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
lExecuting : report_utilization -file AHBLITE_SYS_utilization_synth.rpt -pb AHBLITE_SYS_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Mar 16 16:29:27 20242default:defaultZ17-206h px� 


End Record