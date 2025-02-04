
####################################################################################
# Generated by PlanAhead 14.7 built on 'Fri Sep 27 19:31:35 MDT 2013' by 'xbuild'
####################################################################################


####################################################################################
# Constraints from file : 'divider_with_cache.ucf'
####################################################################################

##############################################################################
##	File name: divider_with_cache.ucf (based on Nexys4_Master.ucf provided by xilinx)
##  Fangzhou Wang
##  Date: 6/01/2014
##############################################################################
## This file is a .ucf for divider_with_cache lab for the Nexys4 rev B board
## To modify it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used signals according to the project

## Clock signal
#Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property PACKAGE_PIN E3 [get_ports ClkPort]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:12
# The conversion of 'IOSTANDARD' constraint on 'net' object 'ClkPort' has been applied to the port object 'ClkPort'.
set_property IOSTANDARD LVCMOS33 [get_ports ClkPort]

# All timing constraint translations are rough conversions, intended to act as a template for further manual refinement. The translations should not be expected to produce semantically identical results to the original ucf. Each xdc timing constraint must be manually inspected and verified to ensure it captures the desired intent

# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:14
create_clock -name ClkPort -period 10.000 [get_ports ClkPort]

 
## Switches
#Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property PACKAGE_PIN J15 [get_ports sw0]
set_property IOSTANDARD LVCMOS33 [get_ports sw0]
#Bank = 34, Pin name = IO_25_34,							Sch name = SW1
set_property PACKAGE_PIN L16 [get_ports sw1]
set_property IOSTANDARD LVCMOS33 [get_ports sw1]
#Bank = 34, Pin name = IO_L23P_T3_34,						Sch name = SW2
set_property PACKAGE_PIN M13 [get_ports sw2]
set_property IOSTANDARD LVCMOS33 [get_ports sw2]
#Bank = 34, Pin name = IO_L19P_T3_34,						Sch name = SW3
set_property PACKAGE_PIN R15 [get_ports sw3]
set_property IOSTANDARD LVCMOS33 [get_ports sw3]
#Bank = 34, Pin name = IO_L19N_T3_VREF_34,					Sch name = SW4
set_property PACKAGE_PIN R17 [get_ports sw4]
set_property IOSTANDARD LVCMOS33 [get_ports sw4]
#Bank = 34, Pin name = IO_L20P_T3_34,						Sch name = SW5
set_property PACKAGE_PIN T18 [get_ports sw5]
set_property IOSTANDARD LVCMOS33 [get_ports sw5]
#Bank = 34, Pin name = IO_L20N_T3_34,						Sch name = SW6
set_property PACKAGE_PIN U18 [get_ports sw6]
set_property IOSTANDARD LVCMOS33 [get_ports sw6]
#Bank = 34, Pin name = IO_L10P_T1_34,						Sch name = SW7
set_property PACKAGE_PIN R13 [get_ports sw7]
set_property IOSTANDARD LVCMOS33 [get_ports sw7]
#NET "sw<8>"			LOC = "T8"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L8P_T1-34,						Sch name = SW8
#NET "sw<9>"			LOC = "U8"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L9N_T1_DQS_34,					Sch name = SW9
#NET "sw<10>"			LOC = "R16"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L9P_T1_DQS_34,					Sch name = SW10
#NET "sw<11>"			LOC = "T13"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L11N_T1_MRCC_34,					Sch name = SW11
#NET "sw<12>"			LOC = "H6"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L17N_T2_34,						Sch name = SW12
#NET "sw<13>"			LOC = "U12"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L11P_T1_SRCC_34,					Sch name = SW13
#NET "sw<14>"			LOC = "U11"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L14N_T2_SRCC_34,					Sch name = SW14
#NET "sw<15>"			LOC = "V10"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L14P_T2_SRCC_34,					Sch name = SW15
 
## LEDs
#Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property PACKAGE_PIN H17 [get_ports LD0]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:36
# The conversion of 'IOSTANDARD' constraint on 'net' object 'LD0' has been applied to the port object 'LD0'.
set_property IOSTANDARD LVCMOS33 [get_ports LD0]
#Bank = 34, Pin name = IO_L21N_T3_DQS_34,					Sch name = LED1
set_property PACKAGE_PIN K15 [get_ports LD1]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:37
# The conversion of 'IOSTANDARD' constraint on 'net' object 'LD1' has been applied to the port object 'LD1'.
set_property IOSTANDARD LVCMOS33 [get_ports LD1]
#Bank = 34, Pin name = IO_L24P_T3_34,						Sch name = LED2
set_property PACKAGE_PIN J13 [get_ports LD2]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:38
# The conversion of 'IOSTANDARD' constraint on 'net' object 'LD2' has been applied to the port object 'LD2'.
set_property IOSTANDARD LVCMOS33 [get_ports LD2]
#Bank = 34, Pin name = IO_L23N_T3_34,						Sch name = LED3
set_property PACKAGE_PIN N14 [get_ports LD3]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:39
# The conversion of 'IOSTANDARD' constraint on 'net' object 'LD3' has been applied to the port object 'LD3'.
set_property IOSTANDARD LVCMOS33 [get_ports LD3]
#Bank = 34, Pin name = IO_L12P_T1_MRCC_34,					Sch name = LED4
set_property PACKAGE_PIN R18 [get_ports LD4]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:40
# The conversion of 'IOSTANDARD' constraint on 'net' object 'LD4' has been applied to the port object 'LD4'.
set_property IOSTANDARD LVCMOS33 [get_ports LD4]
#Bank = 34, Pin name = IO_L12N_T1_MRCC_34,					Sch	name = LED5
set_property PACKAGE_PIN V17 [get_ports LD5]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:41
# The conversion of 'IOSTANDARD' constraint on 'net' object 'LD5' has been applied to the port object 'LD5'.
set_property IOSTANDARD LVCMOS33 [get_ports LD5]
#Bank = 34, Pin name = IO_L22P_T3_34,						Sch name = LED6
set_property PACKAGE_PIN U17 [get_ports LD6]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:42
# The conversion of 'IOSTANDARD' constraint on 'net' object 'LD6' has been applied to the port object 'LD6'.
set_property IOSTANDARD LVCMOS33 [get_ports LD6]
#Bank = 34, Pin name = IO_L22N_T3_34,						Sch name = LED7
set_property PACKAGE_PIN U16 [get_ports LD7]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:43
# The conversion of 'IOSTANDARD' constraint on 'net' object 'LD7' has been applied to the port object 'LD7'.
set_property IOSTANDARD LVCMOS33 [get_ports LD7]
#NET "led<8>"			LOC = "V16"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L10N_T1_34,						Sch name = LED8
#NET "led<9>"			LOC = "T15"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L8N_T1_34,						Sch name = LED9
#NET "led<10>"			LOC = "U14"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L7N_T1_34,						Sch name = LED10
#NET "led<11>"			LOC = "T16"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L17P_T2_34,						Sch name = LED11
#NET "led<12>"			LOC = "V15"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L13N_T2_MRCC_34,					Sch name = LED12
#NET "led<13>"			LOC = "V14"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L7P_T1_34,						Sch name = LED13
#NET "led<14>"			LOC = "V12"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L15N_T2_DQS_34,					Sch name = LED14
#NET "led<15>"			LOC = "V11"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L15P_T2_DQS_34,					Sch name = LED15

#NET "RGB1_Red"			LOC = "N15"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_L5P_T0_34,						Sch name = LED16_R
#NET "RGB1_Green"		LOC = "M16"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L5P_T0_AD9P_15,					Sch name = LED16_G
#NET "RGB1_Blue"		LOC = "R12"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L19N_T3_VREF_35,					Sch name = LED16_B
#NET "RGB2_Red"			LOC = "N16"	| IOSTANDARD = "LVCMOS33";		#Bank = 34, Pin name = IO_0_34,								Sch name = LED17_R
#NET "RGB2_Green"		LOC = "R11"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_24P_T3_35,						Sch name =  LED17_G
#NET "RGB2_Blue"		LOC = "G14"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = IO_L3N_T0_DQS_EMCCLK_14,			Sch name = LED17_B

## Buttons
#NET "btnCpuReset"		LOC = "C12"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L3P_T0_DQS_AD1P_15,				Sch name = CPU_RESET
#Bank = 15, Pin name = IO_L11N_T1_SRCC_15,					Sch name = BTNC
set_property PACKAGE_PIN N17 [get_ports BtnC]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:62
# The conversion of 'IOSTANDARD' constraint on 'net' object 'BtnC' has been applied to the port object 'BtnC'.
set_property IOSTANDARD LVCMOS33 [get_ports BtnC]
#Bank = 15, Pin name = IO_L14P_T2_SRCC_15,					Sch name = BTNU
set_property PACKAGE_PIN M18 [get_ports BtnU]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:63
# The conversion of 'IOSTANDARD' constraint on 'net' object 'BtnU' has been applied to the port object 'BtnU'.
set_property IOSTANDARD LVCMOS33 [get_ports BtnU]
#Bank = CONFIG, Pin name = IO_L15N_T2_DQS_DOUT_CSO_B_14,	Sch name = BTNL
set_property PACKAGE_PIN P17 [get_ports BtnL]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:64
# The conversion of 'IOSTANDARD' constraint on 'net' object 'BtnL' has been applied to the port object 'BtnL'.
set_property IOSTANDARD LVCMOS33 [get_ports BtnL]
#Bank = 14, Pin name = IO_25_14,							Sch name = BTNR
set_property PACKAGE_PIN M17 [get_ports BtnR]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:65
# The conversion of 'IOSTANDARD' constraint on 'net' object 'BtnR' has been applied to the port object 'BtnR'.
set_property IOSTANDARD LVCMOS33 [get_ports BtnR]
#Bank = 14, Pin name = IO_L21P_T3_DQS_14,					Sch name = BTND
set_property PACKAGE_PIN P18 [get_ports BtnD]
set_property IOSTANDARD LVCMOS33 [get_ports BtnD]
 
## USB-RS232 Interface
#Bank = 35, Pin name = IO_L7P_T1_AD6P_35,					Sch name = UART_TXD_IN
set_property PACKAGE_PIN C4 [get_ports rxd_pin]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:69
# The conversion of 'IOSTANDARD' constraint on 'net' object 'rxd_pin' has been applied to the port object 'rxd_pin'.
set_property IOSTANDARD LVCMOS33 [get_ports rxd_pin]
#Bank = 35, Pin name = IO_L11N_T1_SRCC_35,					Sch name = UART_RXD_OUT
set_property PACKAGE_PIN D4 [get_ports txd_pin]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:70
# The conversion of 'IOSTANDARD' constraint on 'net' object 'txd_pin' has been applied to the port object 'txd_pin'.
set_property IOSTANDARD LVCMOS33 [get_ports txd_pin]
#NET "RsCts"			LOC = "D3"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L12N_T1_MRCC_35,					Sch name = UART_CTS
#NET "RsRts"			LOC = "E5"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L5N_T0_AD13N_35,					Sch name = UART_RTS
 
##  Global Timing Contraints 
# NET "lb_sel_pin" OFFSET = IN 0 AFTER clk_pin;
# NET "rst_pin" OFFSET = IN 0 AFTER clk_pin;
# NET "rxd_pin" OFFSET = IN 0 AFTER clk_pin;

# NET "lb_sel_pin" OFFSET = IN -0.5ns BEFORE clk_pin;
# NET "rst_pin" OFFSET = IN -0.5ns BEFORE clk_pin;
# NET "rxd_pin" OFFSET = IN -0.5ns BEFORE clk_pin;

# OFFSET = OUT 10 AFTER clk_pin;

## False Path
# NET "rst_pin" TIG; 
# NET "rxd_pin" TIG;

## 7 segment display
#Bank = 34, Pin name = IO_L2N_T0_34,						Sch name = CA
set_property PACKAGE_PIN T10 [get_ports ca]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:90
# The conversion of 'IOSTANDARD' constraint on 'net' object 'ca' has been applied to the port object 'ca'.
set_property IOSTANDARD LVCMOS33 [get_ports ca]
#Bank = 34, Pin name = IO_L3N_T0_DQS_34,					Sch name = CB
set_property PACKAGE_PIN R10 [get_ports cb]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:91
# The conversion of 'IOSTANDARD' constraint on 'net' object 'cb' has been applied to the port object 'cb'.
set_property IOSTANDARD LVCMOS33 [get_ports cb]
#Bank = 34, Pin name = IO_L6N_T0_VREF_34,					Sch name = CC
set_property PACKAGE_PIN K16 [get_ports cc]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:92
# The conversion of 'IOSTANDARD' constraint on 'net' object 'cc' has been applied to the port object 'cc'.
set_property IOSTANDARD LVCMOS33 [get_ports cc]
#Bank = 34, Pin name = IO_L5N_T0_34,						Sch name = CD
set_property PACKAGE_PIN K13 [get_ports cd]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:93
# The conversion of 'IOSTANDARD' constraint on 'net' object 'cd' has been applied to the port object 'cd'.
set_property IOSTANDARD LVCMOS33 [get_ports cd]
#Bank = 34, Pin name = IO_L2P_T0_34,						Sch name = CE
set_property PACKAGE_PIN P15 [get_ports ce]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:94
# The conversion of 'IOSTANDARD' constraint on 'net' object 'ce' has been applied to the port object 'ce'.
set_property IOSTANDARD LVCMOS33 [get_ports ce]
#Bank = 34, Pin name = IO_L4N_T0_34,						Sch name = CF
set_property PACKAGE_PIN T11 [get_ports cf]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:95
# The conversion of 'IOSTANDARD' constraint on 'net' object 'cf' has been applied to the port object 'cf'.
set_property IOSTANDARD LVCMOS33 [get_ports cf]
#Bank = 34, Pin name = IO_L6P_T0_34,						Sch name = CG
set_property PACKAGE_PIN L18 [get_ports cg]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:96
# The conversion of 'IOSTANDARD' constraint on 'net' object 'cg' has been applied to the port object 'cg'.
set_property IOSTANDARD LVCMOS33 [get_ports cg]

#Bank = 34, Pin name = IO_L16P_T2_34,						Sch name = DP
set_property PACKAGE_PIN H15 [get_ports dp]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:98
# The conversion of 'IOSTANDARD' constraint on 'net' object 'dp' has been applied to the port object 'dp'.
set_property IOSTANDARD LVCMOS33 [get_ports dp]

#Bank = 34, Pin name = IO_L18N_T2_34,						Sch name = AN0
set_property PACKAGE_PIN J17 [get_ports AN0]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:100
# The conversion of 'IOSTANDARD' constraint on 'net' object 'AN0' has been applied to the port object 'AN0'.
set_property IOSTANDARD LVCMOS33 [get_ports AN0]
#Bank = 34, Pin name = IO_L18P_T2_34,						Sch name = AN1
set_property PACKAGE_PIN J18 [get_ports AN1]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:101
# The conversion of 'IOSTANDARD' constraint on 'net' object 'AN1' has been applied to the port object 'AN1'.
set_property IOSTANDARD LVCMOS33 [get_ports AN1]
#Bank = 34, Pin name = IO_L4P_T0_34,						Sch name = AN2
set_property PACKAGE_PIN T9 [get_ports AN2]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:102
# The conversion of 'IOSTANDARD' constraint on 'net' object 'AN2' has been applied to the port object 'AN2'.
set_property IOSTANDARD LVCMOS33 [get_ports AN2]
#Bank = 34, Pin name = IO_L13_T2_MRCC_34,					Sch name = AN3
set_property PACKAGE_PIN J14 [get_ports AN3]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:103
# The conversion of 'IOSTANDARD' constraint on 'net' object 'AN3' has been applied to the port object 'AN3'.
set_property IOSTANDARD LVCMOS33 [get_ports AN3]
#Bank = 34, Pin name = IO_L3P_T0_DQS_34,					Sch name = AN4
set_property PACKAGE_PIN P14 [get_ports AN4]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:104
# The conversion of 'IOSTANDARD' constraint on 'net' object 'AN4' has been applied to the port object 'AN4'.
set_property IOSTANDARD LVCMOS33 [get_ports AN4]
#Bank = 34, Pin name = IO_L16N_T2_34,						Sch name = AN5
set_property PACKAGE_PIN T14 [get_ports AN5]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:105
# The conversion of 'IOSTANDARD' constraint on 'net' object 'AN5' has been applied to the port object 'AN5'.
set_property IOSTANDARD LVCMOS33 [get_ports AN5]
#Bank = 34, Pin name = IO_L1P_T0_34,						Sch name = AN6
set_property PACKAGE_PIN K2 [get_ports AN6]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:106
# The conversion of 'IOSTANDARD' constraint on 'net' object 'AN6' has been applied to the port object 'AN6'.
set_property IOSTANDARD LVCMOS33 [get_ports AN6]
#Bank = 34, Pin name = IO_L1N_T034,							Sch name = AN7
set_property PACKAGE_PIN U13 [get_ports AN7]
# U:/Downloads/divider_with_cache(1)/divider_with_cache/divider_with_cache/divider_with_cache.ucf:107
# The conversion of 'IOSTANDARD' constraint on 'net' object 'AN7' has been applied to the port object 'AN7'.
set_property IOSTANDARD LVCMOS33 [get_ports AN7]

  
## Pmod Header JA
#NET "JA<0>"			LOC = "B13"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L1N_T0_AD0N_15,					Sch name = JA1
#NET "JA<1>"			LOC = "F14"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L5N_T0_AD9N_15,					Sch name = JA2
#NET "JA<2>"			LOC = "D17"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L16N_T2_A27_15,					Sch name = JA3
#NET "JA<3>"			LOC = "E17"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L16P_T2_A28_15,					Sch name = JA4
#NET "JA<4>"			LOC = "G13"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_0_15,								Sch name = JA7
#NET "JA<5>"			LOC = "C17"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L20N_T3_A19_15,					Sch name = JA8
#NET "JA<6>"			LOC = "D18"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L21N_T3_A17_15,					Sch name = JA9
#NET "JA<7>"			LOC = "E18"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L21P_T3_DQS_15,					Sch name = JA10

## Pmod Header JB
#NET "JB<0>"			LOC = "G14"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L15N_T2_DQS_ADV_B_15,				Sch name = JB1
#NET "JB<1>"			LOC = "P15"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L13P_T2_MRCC_14,					Sch name = JB2
#NET "JB<2>"			LOC = "V11"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L21N_T3_DQS_A06_D22_14,			Sch name = JB3
#NET "JB<3>"			LOC = "V15"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = IO_L16P_T2_CSI_B_14,				Sch name = JB4
#NET "JB<4>"			LOC = "K16"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_25_15,							Sch name = JB7
#NET "JB<5>"			LOC = "R16"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = IO_L15P_T2_DQS_RWR_B_14,			Sch name = JB8
#NET "JB<6>"			LOC = "T9"  | IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L24P_T3_A01_D17_14,				Sch name = JB9
#NET "JB<7>"			LOC = "U11"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14,			Sch name = JB10 
 
## Pmod Header JC
#NET "JC<0>"			LOC = "K2"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L23P_T3_35,						Sch name = JC1
#NET "JC<1>"			LOC = "E7"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L6P_T0_35,						Sch name = JC2
#NET "JC<2>"			LOC = "J3"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L22P_T3_35,						Sch name = JC3
#NET "JC<3>"			LOC = "J4"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L21P_T3_DQS_35,					Sch name = JC4
#NET "JC<4>"			LOC = "K1"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L23N_T3_35,						Sch name = JC7
#NET "JC<5>"			LOC = "E6"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L5P_T0_AD13P_35,					Sch name = JC8
#NET "JC<6>"			LOC = "J2"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L22N_T3_35,						Sch name = JC9
#NET "JC<7>"			LOC = "G6"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L19P_T3_35,						Sch name = JC10
 
## Pmod Header JD
#NET "JD<0>"			LOC = "H4"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L21N_T2_DQS_35,					Sch name = JD1
#NET "JD<1>"			LOC = "H1"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L17P_T2_35,						Sch name = JD2
#NET "JD<2>"			LOC = "G1"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L17N_T2_35,						Sch name = JD3
#NET "JD<3>"			LOC = "G3"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L20N_T3_35,						Sch name = JD4
#NET "JD<4>"			LOC = "H2"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L15P_T2_DQS_35,					Sch name = JD7
#NET "JD<5>"			LOC = "G4"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L20P_T3_35,						Sch name = JD8
#NET "JD<6>"			LOC = "G2"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L15N_T2_DQS_35,					Sch name = JD9
#NET "JD<7>"			LOC = "F3"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L13N_T2_MRCC_35,					Sch name = JD10
 
## Pmod Header JXADC
#NET "JXADC<0>"			LOC = "A13"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L9P_T1_DQS_AD3P_15,				Sch name = XADC1_P -> XA1_P
#NET "JXADC<1>"			LOC = "A15"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L8P_T1_AD10P_15,					Sch name = XADC2_P -> XA2_P
#NET "JXADC<2>"			LOC = "B16"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L7P_T1_AD2P_15,					Sch name = XADC3_P -> XA3_P
#NET "JXADC<3>"			LOC = "B18"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L10P_T1_AD11P_15,					Sch name = XADC4_P -> XA4_P
#NET "JXADC<4>"			LOC = "A14"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L9N_T1_DQS_AD3N_15,				Sch name = XADC1_N -> XA1_N
#NET "JXADC<5>"			LOC = "A16"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L8N_T1_AD10N_15,					Sch name = XADC2_N -> XA2_N
#NET "JXADC<6>"			LOC = "B17"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L7N_T1_AD2N_15,					Sch name = XADC3_N -> XA3_N 
#NET "JXADC<7>"			LOC = "A18"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L10N_T1_AD11N_15,					Sch name = XADC4_N -> XA4_N

## VGA Connector
#NET "vgaRed<0>"		LOC = "A3"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L8N_T1_AD14N_35,					Sch name = VGA_R0
#NET "vgaRed<1>"		LOC = "B4"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L7N_T1_AD6N_35,					Sch name = VGA_R1
#NET "vgaRed<2>"		LOC = "C5"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L1N_T0_AD4N_35,					Sch name = VGA_R2
#NET "vgaRed<3>"		LOC = "A4"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L8P_T1_AD14P_35,					Sch name = VGA_R3
#NET "vgaBlue<0>"		LOC = "B7"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L2P_T0_AD12P_35,					Sch name = VGA_B0
#NET "vgaBlue<1>"		LOC = "C7"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L4N_T0_35,						Sch name = VGA_B1
#NET "vgaBlue<2>"		LOC = "D7"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L6N_T0_VREF_35,					Sch name = VGA_B2
#NET "vgaBlue<3>"		LOC = "D8"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L4P_T0_35,						Sch name = VGA_B3
#NET "vgaGreen<0>"		LOC = "C6"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L1P_T0_AD4P_35,					Sch name = VGA_G0
#NET "vgaGreen<1>"		LOC = "A5"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L3N_T0_DQS_AD5N_35,				Sch name = VGA_G1
#NET "vgaGreen<2>"		LOC = "B6"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L2N_T0_AD12N_35,					Sch name = VGA_G2
#NET "vgaGreen<3>"		LOC = "A6"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L3P_T0_DQS_AD5P_35,				Sch name = VGA_G3
#NET "Hsync"			LOC = "B11"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L4P_T0_15,						Sch name = VGA_HS
#NET "Vsync"			LOC = "B12"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L3N_T0_DQS_AD1N_15,				Sch name = VGA_BVS

## Micro SD Connector
#NET "sdReset"			LOC = "E2"  | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L14P_T2_SRCC_35,					Sch name = SD_RESET
#NET "sdCD"				LOC = "A1"  | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L9N_T1_DQS_AD7N_35,				Sch name = SD_CD
#NET "sdSCK"			LOC = "B1"  | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L9P_T1_DQS_AD7P_35,				Sch name = SD_SCK
#NET "sdCmd"			LOC = "C1"  | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L16N_T2_35,						Sch name = SD_CMD
#NET "sdData<0>"		LOC = "C2"  | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L16P_T2_35,							Sch name = SD_DAT0
#NET "sdData<1>" 		LOC = "E1"  | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L18N_T2_35,						Sch name = SD_DAT1
#NET "sdData<2>"		LOC = "F1"  | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L18P_T2_35,						Sch name = SD_DAT2
#NET "sdData<3>"		LOC = "D2"  | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L14N_T2_SRCC_35,					Sch name = SD_DAT3

## Accelerometer
#NET "aclMISO"			LOC = "D13"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L6N_T0_VREF_15,					Sch name = ACL_MISO
#NET "aclMOSI"			LOC = "B14"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L2N_T0_AD8N_15,					Sch name = ACL_MOSI
#NET "aclSCK"			LOC = "D15"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L12P_T1_MRCC_15,					Sch name = ACL_SCLK
#NET "aclSS"			LOC = "C15"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L12N_T1_MRCC_15,					Sch name = ACL_CSN
#NET "aclInt1"			LOC = "C16"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L20P_T3_A20_15,					Sch name = ACL_INT1
#NET "aclInt2"			LOC = "E15"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L11P_T1_SRCC_15,					Sch name = ACL_INT2

## Temperature Sensor
#NET "tmpSCL"			LOC = "F16"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L14N_T2_SRCC_15,					Sch name = TMP_SCL
#NET "tmpSDA"			LOC = "G16"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L13N_T2_MRCC_15,					Sch name = TMP_SDA
#NET "tmpInt"			LOC = "D14"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L1P_T0_AD0P_15,					Sch name = TMP_INT
#NET "tmpCT"			LOC = "C14"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L1N_T0_AD0N_15,					Sch name = TMP_CT

## Omnidirectional Microphone
#NET "micClk"			LOC = "J5"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_25_35,								Sch name = M_CLK
#NET "micData"			LOC = "H5"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L24N_T3_35,						Sch name = M_DATA
#NET "micLRSel"			LOC = "F5"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_0_35,								Sch name = M_LRSEL

## PWM Audio Amplifier
#NET "ampPWM"			LOC = "A11"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L4N_T0_15,						Sch name = AUD_PWM
#NET "ampSD"			LOC = "D12"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L6P_T0_15,						Sch name = AUD_SD

## USB HID (PS/2)
#NET "PS2Clk"			LOC = "F4"	| PULLUP | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L13P_T2_MRCC_35,					Sch name = PS2_CLK
#NET "PS2Data"			LOC = "B2"	| PULLUP | IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L10N_T1_AD15N_35,					Sch name = PS2_DATA

## SMSC Ethernet PHY
#NET "PhyMdc"			LOC = "C9"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L11P_T1_SRCC_16,					Sch name = ETH_MDC
#NET "PhyMdio"			LOC = "A9"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L14N_T2_SRCC_16,					Sch name = ETH_MDIO
#NET "PhyRstn"			LOC = "B3"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L10P_T1_AD15P_35,					Sch name = ETH_RSTN
#NET "PhyCrs"			LOC = "D9"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L6N_T0_VREF_16,					Sch name = ETH_CRSDV
#NET "PhyRxErr"			LOC = "C10"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L13N_T2_MRCC_16,					Sch name = ETH_RXERR
#NET "PhyRxd<0>"		LOC = "D10"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L19N_T3_VREF_16,					Sch name = ETH_RXD0
#NET "PhyRxd<1>"		LOC = "C11"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L13P_T2_MRCC_16,					Sch name = ETH_RXD1
#NET "PhyTxEn"			LOC = "B9"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L11N_T1_SRCC_16,					Sch name = ETH_TXEN
#NET "PhyTxd<0>"		LOC = "A10"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L14P_T2_SRCC_16,					Sch name = ETH_TXD0
#NET "PhyTxd<1>"		LOC = "A8"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L12N_T1_MRCC_16,					Sch name = ETH_TXD1
#NET "PhyClk50Mhz"		LOC = "D5"	| IOSTANDARD = "LVCMOS33";		#Bank = 35, Pin name = IO_L11P_T1_SRCC_35,					Sch name = ETH_REFCLK
#NET "PhyIntn"			LOC = "B8"	| IOSTANDARD = "LVCMOS33";		#Bank = 16, Pin name = IO_L12P_T1_MRCC_16,					Sch name = ETH_INTN

## Quad SPI Flash
#NET "QspiSCK"			LOC = "E9"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = CCLK_0,							Sch name = QSPI_SCK
#NET "QspiDB<0>"		LOC = "K17"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = IO_L1P_T0_D00_MOSI_14,			Sch name = QSPI_DQ0
#NET "QspiDB<1>"		LOC = "K18"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = IO_L1N_T0_D01_DIN_14,			Sch name = QSPI_DQ1
#NET "QspiDB<2>"		LOC = "L14"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = IO_L20_T0_D02_14,				Sch name = QSPI_DQ2
#NET "QspiDB<3>"		LOC = "M14"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = IO_L2P_T0_D03_14,				Sch name = QSPI_DQ3
#NET "QspiCSn"			LOC = "L13"	| IOSTANDARD = "LVCMOS33";		#Bank = CONFIG, Pin name = IO_L15N_T2_DQS_DOUT_CSO_B_14,	Sch name = QSPI_CSN

## Cellular RAM
#NET "RamCLK"			LOC = "T15"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L14N_T2_SRCC_14,					Sch name = CRAM_CLK
#NET "RamADVn"			LOC = "T13"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L23P_T3_A03_D19_14,				Sch name = CRAM_ADVN
#NET "RamCEn"			LOC = "L18"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L4P_T0_D04_14,					Sch name = CRAM_CEN
#NET "RamCRE"			LOC = "J14"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L19P_T3_A22_15,					Sch name = CRAM_CRE
#NET "RamOEn"			LOC = "H14"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L15P_T2_DQS_15,					Sch name = CRAM_OEN
#NET "RamWEn"			LOC = "R11"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_0_14,								Sch name = CRAM_WEN
#NET "RamLBn"			LOC = "J15"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L24N_T3_RS0_15,					Sch name = CRAM_LBN
#NET "RamUBn"			LOC = "J13"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L17N_T2_A25_15,					Sch name = CRAM_UBN
#NET "RamWait"			LOC = "T14"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L14P_T2_SRCC_14,					Sch name = CRAM_WAIT

#NET "MemDB<0>"			LOC = "R12"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L5P_T0_DQ06_14,					Sch name = CRAM_DQ0
#NET "MemDB<1>"			LOC = "T11"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L19P_T3_A10_D26_14,				Sch name = CRAM_DQ1
#NET "MemDB<2>"			LOC = "U12"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L20P_T3_A08)D24_14,				Sch name = CRAM_DQ2
#NET "MemDB<3>"			LOC = "R13"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L5N_T0_D07_14,					Sch name = CRAM_DQ3
#NET "MemDB<4>"			LOC = "U18"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L17N_T2_A13_D29_14,				Sch name = CRAM_DQ4
#NET "MemDB<5>"			LOC = "R17"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L12N_T1_MRCC_14,					Sch name = CRAM_DQ5
#NET "MemDB<6>"			LOC = "T18"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L7N_T1_D10_14,					Sch name = CRAM_DQ6
#NET "MemDB<7>"			LOC = "R18"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L7P_T1_D09_14,					Sch name = CRAM_DQ7
#NET "MemDB<8>"			LOC = "F18"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L22N_T3_A16_15,					Sch name = CRAM_DQ8
#NET "MemDB<9>"			LOC = "G18"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L22P_T3_A17_15,					Sch name = CRAM_DQ9
#NET "MemDB<10>"		LOC = "G17"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_IO_L18N_T2_A23_15,				Sch name = CRAM_DQ10
#NET "MemDB<11>"		LOC = "M18"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L4N_T0_D05_14,					Sch name = CRAM_DQ11
#NET "MemDB<12>"		LOC = "M17"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L10N_T1_D15_14,					Sch name = CRAM_DQ12
#NET "MemDB<13>"		LOC = "P18"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L9N_T1_DQS_D13_14,				Sch name = CRAM_DQ13
#NET "MemDB<14>"		LOC = "N17"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L9P_T1_DQS_14,					Sch name = CRAM_DQ14
#NET "MemDB<15>"		LOC = "P17"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L12P_T1_MRCC_14,					Sch name = CRAM_DQ15

#NET "MemAdr<0>"		LOC = "J18"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L23N_T3_FWE_B_15,					Sch name = CRAM_A0
#NET "MemAdr<1>"		LOC = "H17"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L18P_T2_A24_15,					Sch name = CRAM_A1
#NET "MemAdr<2>"		LOC = "H15"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L19N_T3_A21_VREF_15,				Sch name = CRAM_A2
#NET "MemAdr<3>"		LOC = "J17"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L23P_T3_FOE_B_15,					Sch name = CRAM_A3
#NET "MemAdr<4>"		LOC = "H16"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L13P_T2_MRCC_15,					Sch name = CRAM_A4
#NET "MemAdr<5>"		LOC = "K15"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L24P_T3_RS1_15,					Sch name = CRAM_A5
#NET "MemAdr<6>"		LOC = "K13"	| IOSTANDARD = "LVCMOS33";		#Bank = 15, Pin name = IO_L17P_T2_A26_15,					Sch name = CRAM_A6
#NET "MemAdr<7>"		LOC = "N15"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L11P_T1_SRCC_14,					Sch name = CRAM_A7
#NET "MemAdr<8>"		LOC = "V16"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L16N_T2_SRCC-14,					Sch name = CRAM_A8
#NET "MemAdr<9>"		LOC = "U14"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L22P_T3_A05_D21_14,				Sch name = CRAM_A9
#NET "MemAdr<10>"		LOC = "V14"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L22N_T3_A04_D20_14,				Sch name = CRAM_A10
#NET "MemAdr<11>"		LOC = "V12"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L20N_T3_A07_D23_14,				Sch name = CRAM_A11
#NET "MemAdr<12>"		LOC = "P14"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L8N_T1_D12_14,					Sch name = CRAM_A12
#NET "MemAdr<13>"		LOC = "U16"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L18P_T2_A12_D28_14,				Sch name = CRAM_A13
#NET "MemAdr<14>"		LOC = "R15"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L13N_T2_MRCC_14,					Sch name = CRAM_A14
#NET "MemAdr<15>"		LOC = "N14"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L8P_T1_D11_14,					Sch name = CRAM_A15
#NET "MemAdr<16>"		LOC = "N16"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L11N_T1_SRCC_14,					Sch name = CRAM_A16
#NET "MemAdr<17>"		LOC = "M13"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L6N_T0_D08_VREF_14,				Sch name = CRAM_A17
#NET "MemAdr<18>"		LOC = "V17"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L18N_T2_A11_D27_14,				Sch name = CRAM_A18
#NET "MemAdr<19>"		LOC = "U17"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L17P_T2_A14_D30_14,				Sch name = CRAM_A19
#NET "MemAdr<20>"		LOC = "T10"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L24N_T3_A00_D16_14,				Sch name = CRAM_A20
#NET "MemAdr<21>"		LOC = "M16"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L10P_T1_D14_14,					Sch name = CRAM_A21
#NET "MemAdr<22>"		LOC = "U13"	| IOSTANDARD = "LVCMOS33";		#Bank = 14, Pin name = IO_L23N_T3_A02_D18_14,				Sch name = CRAM_A22
