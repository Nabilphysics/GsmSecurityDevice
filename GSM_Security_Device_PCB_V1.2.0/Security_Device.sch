EESchema Schematic File Version 2
LIBS:Security_Device-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Custom_component
LIBS:Security_Device-cache
EELAYER 25 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "GSM Security Device"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA8A-AU U1
U 1 1 5AAD18C7
P 2900 4500
F 0 "U1" H 3500 5700 50  0000 L BNN
F 1 "ATMEGA8A-AU" H 3150 2950 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2900 4500 50  0001 C CIN
F 3 "" H 2900 4500 50  0001 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5AAD19FB
P 1700 6250
F 0 "D1" H 1850 6150 50  0000 C CNN
F 1 "LED" H 1700 6150 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1700 6250 50  0001 C CNN
F 3 "" H 1700 6250 50  0001 C CNN
	1    1700 6250
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5AAD1ADC
P 1700 6500
F 0 "D2" H 1850 6400 50  0000 C CNN
F 1 "LED" H 1700 6400 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1700 6500 50  0001 C CNN
F 3 "" H 1700 6500 50  0001 C CNN
	1    1700 6500
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5AAD1B05
P 1700 6750
F 0 "D3" H 1850 6650 50  0000 C CNN
F 1 "LED" H 1700 6650 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1700 6750 50  0001 C CNN
F 3 "" H 1700 6750 50  0001 C CNN
	1    1700 6750
	1    0    0    -1  
$EndComp
Text GLabel 2850 3200 1    60   Input ~ 0
VCC
$Comp
L Crystal Y1
U 1 1 5AAD2C5E
P 1850 4400
F 0 "Y1" H 1850 4550 50  0000 C CNN
F 1 "Crystal" H 1850 4650 50  0000 C CNN
F 2 "Crystals:Crystal_HC18-U_Vertical" H 1850 4400 50  0001 C CNN
F 3 "" H 1850 4400 50  0001 C CNN
	1    1850 4400
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AAD2CC1
P 1550 4200
F 0 "C1" H 1575 4300 50  0000 L CNN
F 1 "15pf" H 1575 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1588 4050 50  0001 C CNN
F 3 "" H 1550 4200 50  0001 C CNN
	1    1550 4200
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5AAD2E67
P 1550 4600
F 0 "C2" H 1575 4700 50  0000 L CNN
F 1 "15pf" H 1575 4500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1588 4450 50  0001 C CNN
F 3 "" H 1550 4600 50  0001 C CNN
	1    1550 4600
	0    1    1    0   
$EndComp
Text GLabel 1400 4600 0    60   Input ~ 0
GND
$Comp
L R R1
U 1 1 5AAD38C9
P 1250 3650
F 0 "R1" V 1330 3650 50  0000 C CNN
F 1 "10k" V 1250 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 3650 50  0001 C CNN
F 3 "" H 1250 3650 50  0001 C CNN
	1    1250 3650
	-1   0    0    1   
$EndComp
$Comp
L SW_Push_Dual_x2-RESCUE-Security_Device SW1
U 1 1 5AAD49B7
P 1600 5050
F 0 "SW1" H 1500 4850 50  0000 L CNN
F 1 "RST" H 1600 4950 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 1600 5250 50  0001 C CNN
F 3 "" H 1600 5250 50  0001 C CNN
	1    1600 5050
	1    0    0    -1  
$EndComp
Text GLabel 2000 3700 0    60   Input ~ 0
VCC
Text GLabel 2000 3900 0    60   Input ~ 0
GND
$Comp
L R R2
U 1 1 5AAD5896
P 1950 2850
F 0 "R2" V 2030 2850 50  0000 C CNN
F 1 "10k" V 1950 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1880 2850 50  0001 C CNN
F 3 "" H 1950 2850 50  0001 C CNN
	1    1950 2850
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5AAD6BF0
P 2350 3000
F 0 "R7" V 2430 3000 50  0000 C CNN
F 1 "10k" V 2350 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2280 3000 50  0001 C CNN
F 3 "" H 2350 3000 50  0001 C CNN
	1    2350 3000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AAD6C33
P 1950 3200
F 0 "R3" V 2030 3200 50  0000 C CNN
F 1 "1k" V 1950 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1880 3200 50  0001 C CNN
F 3 "" H 1950 3200 50  0001 C CNN
	1    1950 3200
	0    1    1    0   
$EndComp
$Comp
L TL431 T1
U 1 1 5AAD7286
P 1600 3200
F 0 "T1" V 1850 3150 60  0000 C CNN
F 1 "TL431" V 1750 3200 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1600 3200 60  0001 C CNN
F 3 "" H 1600 3200 60  0001 C CNN
	1    1600 3200
	0    1    -1   0   
$EndComp
Text GLabel 3900 4200 2    60   Input ~ 0
A0
Text GLabel 2500 2850 2    60   Input ~ 0
A0
Text GLabel 1800 5050 2    60   Input ~ 0
D4
Text GLabel 3900 5500 2    60   Input ~ 0
D4
Text GLabel 1250 3500 1    60   Input ~ 0
RST
Text GLabel 3850 3200 0    60   Input ~ 0
RST
$Comp
L Conn_01x03 J3
U 1 1 5AADBE44
P 7100 4500
F 0 "J3" H 7100 4700 50  0000 C CNN
F 1 "PIR" H 7100 4300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7100 4500 50  0001 C CNN
F 3 "" H 7100 4500 50  0001 C CNN
	1    7100 4500
	1    0    0    -1  
$EndComp
$Comp
L SW_2P2T_DPDTx2 SW2
U 1 1 5AADF226
P 6050 4600
F 0 "SW2" H 6040 4970 50  0000 C CNN
F 1 "SW_2P2T_DPDTx2" H 6150 4200 50  0000 C CNN
F 2 "Custom Footprint:DPDT SW 6 pin" H 6050 4420 50  0001 C CNN
F 3 "" H 6050 4420 50  0001 C CNN
	1    6050 4600
	1    0    0    -1  
$EndComp
$Comp
L SIM_Card-RESCUE-Security_Device J2
U 1 1 5AAED0CB
P 6800 5950
F 0 "J2" H 6950 5650 50  0000 R CNN
F 1 "SIM_Card" H 6800 5650 50  0000 R CNN
F 2 "Custom Footprint:SIM Card" H 6800 6300 50  0001 C CNN
F 3 "" H 6750 5950 50  0000 C CNN
	1    6800 5950
	0    -1   -1   0   
$EndComp
NoConn ~ 3900 3600
NoConn ~ 3900 3700
NoConn ~ 3900 4900
NoConn ~ 3900 4800
NoConn ~ 3900 4700
NoConn ~ 3900 4600
NoConn ~ 3900 4500
NoConn ~ 3900 4400
NoConn ~ 3900 4300
Text GLabel 4800 3450 3    60   Input ~ 0
GND
Text GLabel 5850 4300 0    60   Input ~ 0
D2
Text GLabel 3900 5300 2    60   Input ~ 0
D2
NoConn ~ 5850 4500
NoConn ~ 5650 2900
NoConn ~ 5650 3000
NoConn ~ 6550 2900
NoConn ~ 6550 3000
$Comp
L LED D4
U 1 1 5AB380EF
P 6700 7450
F 0 "D4" H 6800 7400 50  0000 C CNN
F 1 "LED" H 6700 7350 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 6700 7450 50  0001 C CNN
F 3 "" H 6700 7450 50  0001 C CNN
	1    6700 7450
	-1   0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5AB3817C
P 6400 7450
F 0 "R10" V 6500 7450 50  0000 C CNN
F 1 "1k" V 6400 7450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 7450 50  0001 C CNN
F 3 "" H 6400 7450 50  0001 C CNN
	1    6400 7450
	0    1    1    0   
$EndComp
$Comp
L CP1 C5
U 1 1 5AB382CE
P 6150 6200
F 0 "C5" H 6175 6300 50  0000 L CNN
F 1 "1000uf" H 5850 6100 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P5.00mm" H 6150 6200 50  0001 C CNN
F 3 "" H 6150 6200 50  0001 C CNN
	1    6150 6200
	1    0    0    -1  
$EndComp
NoConn ~ 6250 6650
NoConn ~ 6250 6750
NoConn ~ 5100 7450
NoConn ~ 5100 6750
$Comp
L R R13
U 1 1 5AB3F9E6
P 7000 6700
F 0 "R13" V 7100 6700 50  0000 C CNN
F 1 "10k" V 7000 6700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6930 6700 50  0001 C CNN
F 3 "" H 7000 6700 50  0001 C CNN
	1    7000 6700
	-1   0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5AB41834
P 5800 6200
F 0 "C4" H 5825 6300 50  0000 L CNN
F 1 "0.1uf" H 5600 6100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5838 6050 50  0001 C CNN
F 3 "" H 5800 6200 50  0001 C CNN
	1    5800 6200
	1    0    0    -1  
$EndComp
NoConn ~ 6250 7250
$Comp
L C C3
U 1 1 5AB57555
P 5450 6200
F 0 "C3" H 5475 6300 50  0000 L CNN
F 1 "120pf" H 5200 6100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5488 6050 50  0001 C CNN
F 3 "" H 5450 6200 50  0001 C CNN
	1    5450 6200
	1    0    0    -1  
$EndComp
Text GLabel 6350 6050 1    60   Input ~ 0
GND
NoConn ~ 6900 6450
$Comp
L R R4
U 1 1 5AB6C28A
P 2000 6250
F 0 "R4" V 2100 6250 50  0000 C CNN
F 1 "1k" V 2000 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 6250 50  0001 C CNN
F 3 "" H 2000 6250 50  0001 C CNN
	1    2000 6250
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5AB6C464
P 2000 6500
F 0 "R5" V 2100 6500 50  0000 C CNN
F 1 "1k" V 2000 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 6500 50  0001 C CNN
F 3 "" H 2000 6500 50  0001 C CNN
	1    2000 6500
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AB6C4D1
P 2000 6750
F 0 "R6" V 2100 6750 50  0000 C CNN
F 1 "1k" V 2000 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 6750 50  0001 C CNN
F 3 "" H 2000 6750 50  0001 C CNN
	1    2000 6750
	0    1    1    0   
$EndComp
$Comp
L M590 G1
U 1 1 5AB7F1C4
P 5700 7000
F 0 "G1" H 5450 7550 60  0000 C CNN
F 1 "M590" H 5850 7550 60  0000 C CNN
F 2 "Custom Footprint:M590" H 5600 7000 60  0001 C CNN
F 3 "" H 5600 7000 60  0001 C CNN
	1    5700 7000
	1    0    0    -1  
$EndComp
$Comp
L Battery_charging_module B1
U 1 1 5AB9FA60
P 6100 3050
F 0 "B1" H 6100 2900 60  0000 C CNN
F 1 "Battery_charging_module" H 6100 3350 60  0000 C CNN
F 2 "Custom Footprint:Battery_charging_module" H 6100 3050 60  0001 C CNN
F 3 "" H 6100 3050 60  0001 C CNN
	1    6100 3050
	1    0    0    -1  
$EndComp
Text GLabel 5100 3350 1    60   Input ~ 0
VCC
Text GLabel 6150 6050 1    60   Input ~ 0
VCC
NoConn ~ 3900 3500
Text GLabel 6600 3100 2    60   Input ~ 0
VCC
$Comp
L FS8205A M2
U 1 1 5AB9C2DC
P 6000 3750
F 0 "M2" H 6000 3500 60  0000 C CNN
F 1 "FS8205A" H 6000 4000 60  0000 C CNN
F 2 "Custom Footprint:TSSOP-8" H 6000 3750 60  0001 C CNN
F 3 "" H 6000 3750 60  0001 C CNN
	1    6000 3750
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5AB57D33
P 6700 4050
F 0 "R11" V 6780 4050 50  0000 C CNN
F 1 "10k" V 6700 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6630 4050 50  0001 C CNN
F 3 "" H 6700 4050 50  0001 C CNN
	1    6700 4050
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5AB5862B
P 6900 4050
F 0 "R12" V 6980 4050 50  0000 C CNN
F 1 "220R" V 6900 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6830 4050 50  0001 C CNN
F 3 "" H 6900 4050 50  0001 C CNN
	1    6900 4050
	1    0    0    -1  
$EndComp
$Comp
L Battery_Pad B2
U 1 1 5AB5AD25
P 6900 3400
F 0 "B2" V 6650 3500 60  0000 C CNN
F 1 "Battery_Pad" V 7100 3450 60  0000 C CNN
F 2 "Custom Footprint:Battery_pad" V 6935 3495 60  0001 C CNN
F 3 "" V 6935 3495 60  0001 C CNN
	1    6900 3400
	0    1    -1   0   
$EndComp
Wire Wire Line
	1700 4400 1700 4200
Wire Wire Line
	1700 4200 2000 4200
Wire Wire Line
	2000 4400 2000 4600
Wire Wire Line
	2000 4600 1700 4600
Connection ~ 1400 4200
Connection ~ 1700 4200
Connection ~ 2000 4400
Connection ~ 1400 4600
Wire Wire Line
	1600 3400 1600 3800
Wire Wire Line
	1600 3800 2000 3800
Wire Wire Line
	1800 3200 1800 3400
Wire Wire Line
	1800 3400 1600 3400
Wire Wire Line
	2100 3200 2950 3200
Connection ~ 2850 3200
Wire Wire Line
	1400 2850 1800 2850
Connection ~ 1400 3200
Wire Wire Line
	2100 2850 2500 2850
Wire Wire Line
	2350 3150 2350 3200
Connection ~ 2350 3200
Connection ~ 2350 2850
Wire Wire Line
	1400 2850 1400 7600
Wire Wire Line
	1250 3500 2000 3500
Connection ~ 1250 3500
Connection ~ 1600 3400
Connection ~ 1800 3200
Wire Wire Line
	6400 3700 6400 3800
Wire Wire Line
	5500 3350 6700 3350
Wire Wire Line
	6250 4400 6900 4400
Wire Wire Line
	5850 4900 5750 4900
Wire Wire Line
	5750 4900 5750 5100
Wire Wire Line
	5750 5100 6850 5100
Wire Wire Line
	6850 5100 6850 4600
Wire Wire Line
	6850 4600 6900 4600
Wire Wire Line
	5500 3100 5650 3100
Wire Wire Line
	6400 3450 6400 3600
Wire Wire Line
	5100 3350 5100 6650
Wire Wire Line
	5000 7250 5100 7250
Wire Wire Line
	5000 7350 5100 7350
Connection ~ 5100 6550
Wire Wire Line
	6250 7350 7000 7350
Connection ~ 6850 7350
Wire Wire Line
	5000 6850 5100 6850
Wire Wire Line
	5000 3450 5000 6850
Wire Wire Line
	1400 7600 7000 7600
Wire Wire Line
	7000 7600 7000 7350
Connection ~ 5000 7350
Connection ~ 5000 7250
Connection ~ 6500 4400
Wire Wire Line
	6600 3100 6600 5200
Wire Wire Line
	6600 3100 6550 3100
Wire Wire Line
	6600 4800 6250 4800
Wire Wire Line
	1400 6100 2950 6100
Connection ~ 1400 5050
Wire Wire Line
	1400 6250 1550 6250
Connection ~ 1400 6100
Wire Wire Line
	1400 6500 1550 6500
Connection ~ 1400 6250
Wire Wire Line
	1400 6750 1550 6750
Connection ~ 1400 6500
Connection ~ 5450 6350
Connection ~ 5800 6350
Connection ~ 6350 7350
Connection ~ 6350 6850
Wire Wire Line
	6850 7450 6850 7350
Connection ~ 5450 6050
Connection ~ 5800 6050
Connection ~ 6150 6350
Wire Wire Line
	6350 6050 6350 7350
Wire Wire Line
	5000 6350 6350 6350
Connection ~ 6350 6350
Wire Wire Line
	6250 6950 7000 6950
Wire Wire Line
	6500 6950 6500 6450
Wire Wire Line
	6250 7050 6600 7050
Wire Wire Line
	6600 7050 6600 6450
Wire Wire Line
	6250 7150 6700 7150
Wire Wire Line
	6700 7150 6700 6450
Wire Wire Line
	6250 6850 6800 6850
Wire Wire Line
	6250 6550 7000 6550
Wire Wire Line
	7000 6550 7000 6450
Wire Wire Line
	7000 6950 7000 6850
Connection ~ 6500 6950
Connection ~ 7000 6550
Wire Wire Line
	3900 5100 4900 5100
Wire Wire Line
	4900 5100 4900 7050
Wire Wire Line
	4900 7050 5100 7050
Wire Wire Line
	3900 5200 4800 5200
Wire Wire Line
	4800 5200 4800 6950
Wire Wire Line
	4800 6950 5100 6950
Connection ~ 5000 3450
Connection ~ 5000 6350
Connection ~ 5100 6050
Wire Wire Line
	5100 6050 6150 6050
Connection ~ 7000 6850
Connection ~ 2850 6100
Connection ~ 5100 3350
Connection ~ 6150 6050
Connection ~ 6500 3350
Wire Wire Line
	6700 3500 6600 3500
Connection ~ 6600 3500
Connection ~ 6500 3700
Wire Wire Line
	5850 4700 5600 4700
Wire Wire Line
	5600 4700 5600 4100
Wire Wire Line
	3900 5800 3900 6250
Wire Wire Line
	3900 6250 2150 6250
Wire Wire Line
	3900 5700 4000 5700
Wire Wire Line
	4000 5700 4000 6500
Wire Wire Line
	4000 6500 2150 6500
Wire Wire Line
	2150 6750 4100 6750
Wire Wire Line
	4100 6750 4100 5600
Wire Wire Line
	4100 5600 3900 5600
Wire Wire Line
	6600 5200 5100 5200
Connection ~ 5100 5200
Connection ~ 6600 4800
Connection ~ 6600 3100
Wire Wire Line
	5500 3100 5500 3350
Wire Wire Line
	5100 7150 5000 7150
Wire Wire Line
	5000 7150 5000 7600
Wire Wire Line
	6800 6850 6800 6450
Wire Wire Line
	6500 3350 6500 4400
Wire Wire Line
	6400 3900 6900 3900
Wire Wire Line
	6700 4200 6700 4400
Connection ~ 6700 4400
Connection ~ 6700 3900
Wire Wire Line
	5600 4100 6400 4100
Wire Wire Line
	6400 4100 6400 4300
Wire Wire Line
	6400 4300 6900 4300
Wire Wire Line
	6850 4300 6850 4500
Wire Wire Line
	6850 4500 6900 4500
Wire Wire Line
	6900 4300 6900 4200
Connection ~ 6850 4300
Connection ~ 1400 6750
Wire Wire Line
	6400 3700 6500 3700
Connection ~ 5000 7600
$Comp
L AVR_ICSP J1
U 1 1 5AB66DB5
P 4350 3100
F 0 "J1" H 4400 2900 50  0000 C CNN
F 1 "AVR_ICSP" H 4400 3300 50  0000 C CNN
F 2 "Custom Footprint:ICSP_PinHeader_2x03_P2.54mm_Vertical" H 4350 3100 50  0001 C CNN
F 3 "" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3200 3850 3200
Wire Wire Line
	3900 3900 4000 3900
Wire Wire Line
	4000 3900 4000 3000
Wire Wire Line
	4000 3000 4150 3000
Wire Wire Line
	3900 4000 4100 4000
Wire Wire Line
	4100 4000 4100 3100
Wire Wire Line
	4100 3100 4150 3100
Wire Wire Line
	4650 3200 4650 3450
Wire Wire Line
	4650 3450 6400 3450
Wire Wire Line
	3900 3800 4200 3800
Wire Wire Line
	4200 3800 4200 3350
Wire Wire Line
	4200 3350 4750 3350
Wire Wire Line
	4750 3350 4750 3100
Wire Wire Line
	4750 3100 4650 3100
Wire Wire Line
	4650 3000 4850 3000
Wire Wire Line
	4850 3000 4850 3350
Wire Wire Line
	4850 3350 5100 3350
Text GLabel 1250 3800 3    60   Input ~ 0
VCC
NoConn ~ 5600 3900
NoConn ~ 5600 3800
NoConn ~ 5600 3700
NoConn ~ 5600 3600
NoConn ~ 3900 5400
$EndSCHEMATC
