EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Heat Controller Schematic"
Date "2020-10-11"
Rev "3"
Comp "Arjan Buijserd"
Comment1 "and not checked by any authorized professional."
Comment2 "Note that these schematics are developed for non-commercial applications"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U2
U 1 1 5EB3B2DC
P 9200 3650
F 0 "U2" H 9950 3150 50  0000 R CNN
F 1 "ATtiny85-20PU" H 10150 3050 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9200 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 9200 3650 50  0001 C CNN
	1    9200 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5EB3BAA1
P 9250 1200
F 0 "D4" H 9243 1416 50  0000 C CNN
F 1 "Red" H 9243 1325 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9250 1200 50  0001 C CNN
F 3 "~" H 9250 1200 50  0001 C CNN
	1    9250 1200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5EB3C853
P 8300 1850
F 0 "D3" H 8293 2066 50  0000 C CNN
F 1 "Green" H 8293 1975 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 8300 1850 50  0001 C CNN
F 3 "~" H 8300 1850 50  0001 C CNN
	1    8300 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5EB3CF9A
P 9250 850
F 0 "D2" H 9243 1066 50  0000 C CNN
F 1 "Green" H 9243 975 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9250 850 50  0001 C CNN
F 3 "~" H 9250 850 50  0001 C CNN
	1    9250 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5EB3D88D
P 8750 1200
F 0 "R5" H 8820 1246 50  0000 L CNN
F 1 "360" H 8820 1155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8680 1200 50  0001 C CNN
F 3 "~" H 8750 1200 50  0001 C CNN
	1    8750 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5EB3DEF1
P 8750 850
F 0 "R3" H 8820 896 50  0000 L CNN
F 1 "360" H 8820 805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8680 850 50  0001 C CNN
F 3 "~" H 8750 850 50  0001 C CNN
	1    8750 850 
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5EB6CBB1
P 1400 2550
F 0 "J1" H 1318 2225 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 1600 2300 50  0000 C CNN
F 2 "TerminalBlock:ScrewTerminal_01x03_HeavyDuty" H 1400 2550 50  0001 C CNN
F 3 "~" H 1400 2550 50  0001 C CNN
	1    1400 2550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 5EB6DE4E
P 1400 3500
F 0 "J2" H 1318 3175 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 1650 3250 50  0000 C CNN
F 2 "TerminalBlock:ScrewTerminal_01x03_HeavyDuty" H 1400 3500 50  0001 C CNN
F 3 "~" H 1400 3500 50  0001 C CNN
	1    1400 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 2650 2300 3600
Wire Wire Line
	2500 3650 2500 3400
Text Notes 600  2700 0    50   ~ 0
Input (from grid):\n3 - L\n2 - N\n1 - Earth
Text Notes 600  3650 0    50   ~ 0
Output (to heater):\n3 - L (switched)\n2 - N\n1 - Earth
Wire Wire Line
	8900 850  9100 850 
Wire Wire Line
	8450 1850 8650 1850
Wire Wire Line
	8900 1200 9100 1200
$Comp
L power:GND #PWR015
U 1 1 5EB8668E
P 9750 850
F 0 "#PWR015" H 9750 600 50  0001 C CNN
F 1 "GND" H 9755 677 50  0000 C CNN
F 2 "" H 9750 850 50  0001 C CNN
F 3 "" H 9750 850 50  0001 C CNN
	1    9750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 850  9750 850 
$Comp
L power:GND #PWR016
U 1 1 5EB86D9A
P 10450 1850
F 0 "#PWR016" H 10450 1600 50  0001 C CNN
F 1 "GND" H 10455 1677 50  0000 C CNN
F 2 "" H 10450 1850 50  0001 C CNN
F 3 "" H 10450 1850 50  0001 C CNN
	1    10450 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5EB87712
P 9750 1200
F 0 "#PWR017" H 9750 950 50  0001 C CNN
F 1 "GND" H 9755 1027 50  0000 C CNN
F 2 "" H 9750 1200 50  0001 C CNN
F 3 "" H 9750 1200 50  0001 C CNN
	1    9750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1200 9400 1200
Wire Wire Line
	9800 3450 10050 3450
Wire Wire Line
	9200 4400 9200 4300
$Comp
L Device:C C1
U 1 1 5EB95680
P 8300 3650
F 0 "C1" H 8415 3696 50  0000 L CNN
F 1 "100nF" H 8415 3605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 8338 3500 50  0001 C CNN
F 3 "~" H 8300 3650 50  0001 C CNN
	1    8300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3000 9200 3050
Connection ~ 9200 4300
Wire Wire Line
	9200 4300 9200 4250
Wire Wire Line
	9800 3350 10050 3350
Wire Wire Line
	10050 3850 9800 3850
Wire Wire Line
	9800 3750 10050 3750
Wire Wire Line
	10050 3650 9800 3650
Wire Wire Line
	9800 3550 10050 3550
$Comp
L power:GND #PWR014
U 1 1 5EB91221
P 9200 4400
F 0 "#PWR014" H 9200 4150 50  0001 C CNN
F 1 "GND" H 9205 4227 50  0000 C CNN
F 2 "" H 9200 4400 50  0001 C CNN
F 3 "" H 9200 4400 50  0001 C CNN
	1    9200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2250 4000 2250
Wire Wire Line
	2400 2550 2400 3500
Connection ~ 2400 2550
Wire Wire Line
	4450 4150 4450 4350
$Comp
L power:GND #PWR04
U 1 1 5EB7AF84
P 4450 4350
F 0 "#PWR04" H 4450 4100 50  0001 C CNN
F 1 "GND" H 4455 4177 50  0000 C CNN
F 2 "" H 4450 4350 50  0001 C CNN
F 3 "" H 4450 4350 50  0001 C CNN
	1    4450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3950 4750 3950
$Comp
L Device:R R1
U 1 1 5EB719C9
P 5100 3950
F 0 "R1" V 4893 3950 50  0000 C CNN
F 1 "4K7" V 4984 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5030 3950 50  0001 C CNN
F 3 "~" H 5100 3950 50  0001 C CNN
	1    5100 3950
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5EB6FEE4
P 4550 3950
F 0 "Q1" H 4741 3996 50  0000 L CNN
F 1 "BC547" H 4741 3905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4750 3875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4550 3950 50  0001 L CNN
	1    4550 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8300 3500 8300 3000
Wire Wire Line
	8300 3000 9200 3000
Wire Wire Line
	8300 3800 8300 4300
Wire Wire Line
	8300 4300 9200 4300
Wire Wire Line
	8100 1200 8600 1200
Wire Wire Line
	7650 1850 8150 1850
Wire Wire Line
	8100 850  8600 850 
Wire Wire Line
	2500 3650 3050 3650
Wire Wire Line
	3550 3650 4450 3650
Wire Wire Line
	4450 3650 4450 3550
Text Notes 3400 1850 1    50   ~ 0
Isolation Barrier
Wire Wire Line
	1600 2650 1850 2650
Wire Wire Line
	1600 3400 2500 3400
Wire Wire Line
	1600 3500 2400 3500
Wire Wire Line
	1600 3600 2300 3600
Wire Wire Line
	2550 2450 2550 2250
Wire Wire Line
	2650 2550 2650 2450
Wire Wire Line
	2400 2550 2650 2550
$Comp
L Device:Fuse F2
U 1 1 5EC7131F
P 4150 2250
F 0 "F2" V 3953 2250 50  0000 C CNN
F 1 "0.2 A" V 4044 2250 50  0000 C CNN
F 2 "Fuse:Fuse_Holder_04x20" V 4080 2250 50  0001 C CNN
F 3 "~" H 4150 2250 50  0001 C CNN
	1    4150 2250
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5EC74CAD
P 2050 2450
F 0 "F1" V 1853 2450 50  0000 C CNN
F 1 "2A" V 1944 2450 50  0000 C CNN
F 2 "Fuse:Fuse_Holder_04x20" V 1980 2450 50  0001 C CNN
F 3 "~" H 2050 2450 50  0001 C CNN
	1    2050 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 2450 2500 3050
Wire Wire Line
	2500 2450 2550 2450
$Comp
L power:GND #PWR012
U 1 1 5EC84DB7
P 3350 6150
F 0 "#PWR012" H 3350 5900 50  0001 C CNN
F 1 "GND" H 3355 5977 50  0000 C CNN
F 2 "" H 3350 6150 50  0001 C CNN
F 3 "" H 3350 6150 50  0001 C CNN
	1    3350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6150 3350 6000
NoConn ~ 3250 3650
Wire Wire Line
	5250 3950 5600 3950
$Comp
L power:GND #PWR07
U 1 1 5F743808
P 1600 5800
F 0 "#PWR07" H 1600 5550 50  0001 C CNN
F 1 "GND" H 1605 5627 50  0000 C CNN
F 2 "" H 1600 5800 50  0001 C CNN
F 3 "" H 1600 5800 50  0001 C CNN
	1    1600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5800 1600 5800
Wire Wire Line
	2200 2450 2500 2450
Connection ~ 2500 2450
$Comp
L Sensor_Temperature:DS18B20 U1
U 1 1 5F75655C
P 3350 5700
F 0 "U1" H 3120 5746 50  0000 R CNN
F 1 "DS18B20" H 3120 5655 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2350 5450 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 3200 5950 50  0001 C CNN
	1    3350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5700 3700 5700
Wire Wire Line
	9200 2850 9200 3000
Connection ~ 9200 3000
Wire Wire Line
	3550 3050 4450 3050
Wire Wire Line
	2500 3050 3150 3050
Wire Wire Line
	4450 3050 4450 3150
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 5EB6BC13
P 3350 3350
F 0 "K1" H 3550 3800 50  0000 R CNN
F 1 "SANYOU_SRD_Form_C" H 3750 3900 50  0000 R CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 3800 3300 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 3350 3350 50  0001 C CNN
	1    3350 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5EB88196
P 4000 2450
F 0 "#PWR02" H 4000 2200 50  0001 C CNN
F 1 "GND" H 4005 2277 50  0000 C CNN
F 2 "" H 4000 2450 50  0001 C CNN
F 3 "" H 4000 2450 50  0001 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 5EB6F0D1
P 4450 3350
F 0 "D1" V 4496 3222 50  0000 R CNN
F 1 "1N4007" V 4405 3222 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4450 3350 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
	1    4450 3350
	0    -1   -1   0   
$EndComp
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 5EB3E3DE
P 3350 2350
F 0 "PS1" H 3350 2675 50  0000 C CNN
F 1 "HLK-PM01" H 3350 2584 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 3350 2050 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 3750 2000 50  0001 C CNN
	1    3350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2850 3550 3050
Connection ~ 3550 3050
$Comp
L power:+5V #PWR03
U 1 1 5F7B630B
P 4450 2250
F 0 "#PWR03" H 4450 2100 50  0001 C CNN
F 1 "+5V" H 4465 2423 50  0000 C CNN
F 2 "" H 4450 2250 50  0001 C CNN
F 3 "" H 4450 2250 50  0001 C CNN
	1    4450 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5F7B6902
P 3550 2850
F 0 "#PWR01" H 3550 2700 50  0001 C CNN
F 1 "+5V" H 3565 3023 50  0000 C CNN
F 2 "" H 3550 2850 50  0001 C CNN
F 3 "" H 3550 2850 50  0001 C CNN
	1    3550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5F7B9246
P 9200 2850
F 0 "#PWR013" H 9200 2700 50  0001 C CNN
F 1 "+5V" H 9215 3023 50  0000 C CNN
F 2 "" H 9200 2850 50  0001 C CNN
F 3 "" H 9200 2850 50  0001 C CNN
	1    9200 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5F7BA241
P 8100 850
F 0 "#PWR010" H 8100 700 50  0001 C CNN
F 1 "+5V" H 8115 1023 50  0000 C CNN
F 2 "" H 8100 850 50  0001 C CNN
F 3 "" H 8100 850 50  0001 C CNN
	1    8100 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5F7BABD1
P 1800 5700
F 0 "#PWR09" H 1800 5550 50  0001 C CNN
F 1 "+5V" H 1815 5873 50  0000 C CNN
F 2 "" H 1800 5700 50  0001 C CNN
F 3 "" H 1800 5700 50  0001 C CNN
	1    1800 5700
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5F7C5832
P 3350 5250
F 0 "#PWR011" H 3350 5100 50  0001 C CNN
F 1 "+5V" H 3365 5423 50  0000 C CNN
F 2 "" H 3350 5250 50  0001 C CNN
F 3 "" H 3350 5250 50  0001 C CNN
	1    3350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5400 3350 5350
Wire Notes Line
	3350 1900 3350 4100
Wire Wire Line
	2550 2250 2650 2250
Wire Wire Line
	2650 2450 2800 2450
Wire Wire Line
	1600 2450 1900 2450
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F7D603D
P 4350 1950
F 0 "#FLG03" H 4350 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 2123 50  0000 C CNN
F 2 "" H 4350 1950 50  0001 C CNN
F 3 "~" H 4350 1950 50  0001 C CNN
	1    4350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2450 4000 2450
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F7DAD23
P 2650 2250
F 0 "#FLG01" H 2650 2325 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 2423 50  0000 C CNN
F 2 "" H 2650 2250 50  0001 C CNN
F 3 "~" H 2650 2250 50  0001 C CNN
	1    2650 2250
	1    0    0    -1  
$EndComp
Connection ~ 2650 2250
Wire Wire Line
	2650 2250 2950 2250
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F7DB683
P 2800 2450
F 0 "#FLG02" H 2800 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 2623 50  0000 C CNN
F 2 "" H 2800 2450 50  0001 C CNN
F 3 "~" H 2800 2450 50  0001 C CNN
	1    2800 2450
	-1   0    0    1   
$EndComp
Connection ~ 2800 2450
Wire Wire Line
	2800 2450 2950 2450
Wire Wire Line
	4300 2250 4350 2250
Wire Wire Line
	4350 1950 4350 2250
Connection ~ 4350 2250
Wire Wire Line
	4350 2250 4450 2250
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F80AD11
P 1200 1050
F 0 "H2" V 1437 1053 50  0000 C CNN
F 1 "MountingHole_Pad" V 1346 1053 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 1200 1050 50  0001 C CNN
F 3 "~" H 1200 1050 50  0001 C CNN
	1    1200 1050
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F80B80B
P 1200 1450
F 0 "H3" V 1437 1453 50  0000 C CNN
F 1 "MountingHole_Pad" V 1346 1453 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 1200 1450 50  0001 C CNN
F 3 "~" H 1200 1450 50  0001 C CNN
	1    1200 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1450 1300 1450
Wire Wire Line
	1300 1050 1850 1050
Wire Wire Line
	1850 1050 1850 1450
$Comp
L Mechanical:MountingHole H1
U 1 1 5F81BC69
P 2100 1050
F 0 "H1" H 2200 1096 50  0000 L CNN
F 1 "MountingHole" H 2200 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380" H 2100 1050 50  0001 C CNN
F 3 "~" H 2100 1050 50  0001 C CNN
	1    2100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2550 2400 2550
Wire Wire Line
	1850 1450 1850 2650
Connection ~ 1850 1450
Connection ~ 1850 2650
Wire Wire Line
	1850 2650 2300 2650
Text Notes 650  4800 0    50   ~ 0
Power input and control section.\nVAC comes in through screw terminal and feeds the ACDC converter.\nSecondly, the L is switched through a relay.\nTwo grounded mounting holes are added, as they are located close to the terminals.
Text Notes 4700 4900 0    50   ~ 0
Jumper allows to pick between:\n-always off (no header attached)\n-always on (header to comm and +5V)\n-controlled (header to comm and relaypin)
Wire Wire Line
	4450 3750 4450 3650
Connection ~ 4450 3650
Wire Wire Line
	1400 5600 1600 5600
Wire Wire Line
	1400 5500 1600 5500
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5F738750
P 1200 5600
F 0 "J4" H 1300 5950 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1300 5850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1200 5600 50  0001 C CNN
F 3 "~" H 1200 5600 50  0001 C CNN
	1    1200 5600
	1    0    0    -1  
$EndComp
Text Notes 550  6400 0    50   ~ 0
Connection terminal for OLED display
Wire Notes Line
	2400 6450 2400 5000
Text Notes 2500 6400 0    50   ~ 0
Temperature sensor
Wire Notes Line
	6600 2400 11200 2400
Wire Notes Line
	500  5000 11200 5000
Text Notes 6650 2350 0    50   ~ 0
Status LED's:\n- green1: power indicator\n- red: relay indicator\n- green2: control indicator (combined with button on 1 pin)
Text Notes 6700 4900 0    50   ~ 0
ATtiny 85 MCU\n-SCL and SDA for OLED connection\n-ButtonPin to control button\n-Temp to OneWire DS18B20\n-Pins for relaycontrol and LEDcontrol\n
$Comp
L Device:R R6
U 1 1 5F8847C5
P 3700 5500
F 0 "R6" H 3770 5546 50  0000 L CNN
F 1 "4K7" H 3770 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3630 5500 50  0001 C CNN
F 3 "~" H 3700 5500 50  0001 C CNN
	1    3700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5650 3700 5700
Connection ~ 3700 5700
Wire Wire Line
	3700 5700 3900 5700
Wire Wire Line
	3700 5350 3350 5350
Connection ~ 3350 5350
Wire Wire Line
	3350 5350 3350 5250
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 5F83BB74
P 5750 3950
F 0 "JP1" V 5704 4037 50  0000 L CNN
F 1 "Jumper_3_Open" V 5795 4037 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5750 3950 50  0001 C CNN
F 3 "~" H 5750 3950 50  0001 C CNN
	1    5750 3950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5F7C8495
P 5750 4300
F 0 "#PWR05" H 5750 4150 50  0001 C CNN
F 1 "+5V" H 5765 4473 50  0000 C CNN
F 2 "" H 5750 4300 50  0001 C CNN
F 3 "" H 5750 4300 50  0001 C CNN
	1    5750 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 3700 5750 3600
Wire Wire Line
	5750 4300 5750 4200
$Comp
L Switch:SW_Push SW1
U 1 1 5F75962F
P 10050 1850
F 0 "SW1" H 10050 2135 50  0000 C CNN
F 1 "SW_Push" H 10050 2044 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 10050 2050 50  0001 C CNN
F 3 "~" H 10050 2050 50  0001 C CNN
	1    10050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F776692
P 9500 1850
F 0 "R2" V 9293 1850 50  0000 C CNN
F 1 "150" V 9384 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9430 1850 50  0001 C CNN
F 3 "~" H 9500 1850 50  0001 C CNN
	1    9500 1850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5FA11ACE
P 7650 1850
F 0 "#PWR0101" H 7650 1700 50  0001 C CNN
F 1 "+5V" H 7665 2023 50  0000 C CNN
F 2 "" H 7650 1850 50  0001 C CNN
F 3 "" H 7650 1850 50  0001 C CNN
	1    7650 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5EB3DDC2
P 8800 1850
F 0 "R4" H 8870 1896 50  0000 L CNN
F 1 "360" H 8870 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8730 1850 50  0001 C CNN
F 3 "~" H 8800 1850 50  0001 C CNN
	1    8800 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 1850 9150 1850
Wire Wire Line
	9650 1850 9850 1850
Wire Wire Line
	10250 1850 10450 1850
Wire Wire Line
	9150 2150 9150 1850
Connection ~ 9150 1850
Wire Wire Line
	9150 1850 9350 1850
NoConn ~ 10050 3850
Text GLabel 10050 3350 2    50   Input ~ 0
SDA
Text GLabel 10050 3550 2    50   Input ~ 0
SCL
Text GLabel 1600 5500 2    50   Input ~ 0
SDA
Text GLabel 1600 5600 2    50   Input ~ 0
SCL
Wire Wire Line
	1400 5700 1800 5700
Text GLabel 3900 5700 2    50   Input ~ 0
TempPin
Text GLabel 10050 3650 2    50   Input ~ 0
TempPin
Text GLabel 9150 2150 2    50   Input ~ 0
ControlPin
Text GLabel 10050 3450 2    50   Input ~ 0
RelayPin
Text GLabel 8100 1200 0    50   Input ~ 0
RelayPin
Text GLabel 5750 3600 1    50   Input ~ 0
RelayPin
Text GLabel 10050 3750 2    50   Input ~ 0
ControlPin
Wire Notes Line
	4550 5000 4550 6450
Wire Notes Line
	6600 5000 6600 500 
Wire Notes Line
	4550 6450 500  6450
$Comp
L Mechanical:MountingHole H4
U 1 1 5FA81178
P 2100 1350
F 0 "H4" H 2200 1396 50  0000 L CNN
F 1 "MountingHole" H 2200 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.5mm" H 2100 1350 50  0001 C CNN
F 3 "~" H 2100 1350 50  0001 C CNN
	1    2100 1350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
