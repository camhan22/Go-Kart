EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Created_Components:ATTiny85 U1
U 1 1 60C800DD
P 4200 3150
F 0 "U1" H 4000 3450 50  0000 C CNN
F 1 "ATTiny85" H 4450 3450 50  0000 C CNN
F 2 "" H 4200 3150 50  0001 C CNN
F 3 "" H 4200 3150 50  0001 C CNN
	1    4200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 60C812B2
P 4250 2700
F 0 "#PWR04" H 4250 2550 50  0001 C CNN
F 1 "+5V" H 4265 2873 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60C81867
P 4250 3950
F 0 "#PWR05" H 4250 3700 50  0001 C CNN
F 1 "GND" H 4255 3777 50  0000 C CNN
F 2 "" H 4250 3950 50  0001 C CNN
F 3 "" H 4250 3950 50  0001 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3850 4250 3950
$Comp
L Device:R_POT RV1
U 1 1 60C8211D
P 2050 3150
F 0 "RV1" H 1981 3196 50  0000 R CNN
F 1 "Throttle_1/Left" H 1981 3105 50  0000 R CNN
F 2 "" H 2050 3150 50  0001 C CNN
F 3 "~" H 2050 3150 50  0001 C CNN
	1    2050 3150
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 60C827CD
P 2050 3950
F 0 "RV2" H 1981 3996 50  0000 R CNN
F 1 "Throttle_2/Right" H 1981 3905 50  0000 R CNN
F 2 "" H 2050 3950 50  0001 C CNN
F 3 "~" H 2050 3950 50  0001 C CNN
	1    2050 3950
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60C82F38
P 2050 4200
F 0 "#PWR03" H 2050 3950 50  0001 C CNN
F 1 "GND" H 2055 4027 50  0000 C CNN
F 2 "" H 2050 4200 50  0001 C CNN
F 3 "" H 2050 4200 50  0001 C CNN
	1    2050 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60C83288
P 2050 2900
F 0 "#PWR02" H 2050 2650 50  0001 C CNN
F 1 "GND" H 2055 2727 50  0000 C CNN
F 2 "" H 2050 2900 50  0001 C CNN
F 3 "" H 2050 2900 50  0001 C CNN
	1    2050 2900
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60C8398E
P 1800 3550
F 0 "#PWR01" H 1800 3400 50  0001 C CNN
F 1 "+5V" V 1815 3678 50  0000 L CNN
F 2 "" H 1800 3550 50  0001 C CNN
F 3 "" H 1800 3550 50  0001 C CNN
	1    1800 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3550 2050 3550
Wire Wire Line
	2050 3550 2050 3300
Wire Wire Line
	2050 3800 2050 3550
Connection ~ 2050 3550
Wire Wire Line
	2050 2900 2050 3000
Wire Wire Line
	2050 4100 2050 4200
Wire Wire Line
	2200 3150 3300 3150
Wire Wire Line
	3300 3150 3300 3300
Wire Wire Line
	3300 3300 3700 3300
Wire Wire Line
	3700 3400 3350 3400
Wire Wire Line
	3350 3400 3350 3950
Wire Wire Line
	3350 3950 2200 3950
Text Notes 2150 4150 0    50   ~ 0
The wipers face each other and \nthus the connections must be reversed
$Comp
L power:GND #PWR06
U 1 1 60C86AC6
P 2800 1150
F 0 "#PWR06" H 2800 900 50  0001 C CNN
F 1 "GND" H 2805 977 50  0000 C CNN
F 2 "" H 2800 1150 50  0001 C CNN
F 3 "" H 2800 1150 50  0001 C CNN
	1    2800 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 1150 2800 1050
Wire Wire Line
	2800 1050 2900 1050
Text GLabel 2550 650  0    50   Input ~ 0
SCL_SCK
Text GLabel 2550 750  0    50   Input ~ 0
MISO
Text GLabel 2550 850  0    50   Input ~ 0
SDA_MOSI
Wire Wire Line
	2550 650  2900 650 
Wire Wire Line
	2550 750  2900 750 
Wire Wire Line
	2900 850  2550 850 
Text GLabel 5200 3200 2    50   Input ~ 0
SCL_SCK
Text GLabel 5200 3300 2    50   Input ~ 0
MISO
Text GLabel 5200 3550 2    50   Input ~ 0
SDA_MOSI
Wire Wire Line
	4850 3200 5200 3200
Wire Wire Line
	5200 3300 5100 3300
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 60C8EDB9
P 750 750
F 0 "J2" H 858 931 50  0000 C CNN
F 1 "Power Input" H 858 840 50  0000 C CNN
F 2 "" H 750 750 50  0001 C CNN
F 3 "~" H 750 750 50  0001 C CNN
	1    750  750 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 60C8FC52
P 1250 700
F 0 "#PWR07" H 1250 550 50  0001 C CNN
F 1 "+5V" H 1265 873 50  0000 C CNN
F 2 "" H 1250 700 50  0001 C CNN
F 3 "" H 1250 700 50  0001 C CNN
	1    1250 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60C9028B
P 1250 900
F 0 "#PWR08" H 1250 650 50  0001 C CNN
F 1 "GND" H 1255 727 50  0000 C CNN
F 2 "" H 1250 900 50  0001 C CNN
F 3 "" H 1250 900 50  0001 C CNN
	1    1250 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 700  1250 750 
Wire Wire Line
	1250 750  950  750 
Wire Wire Line
	950  850  1250 850 
Wire Wire Line
	1250 850  1250 900 
Wire Wire Line
	4250 2700 4250 2750
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 60CA881F
P 3550 2950
F 0 "JP1" V 3504 2998 50  0000 L CNN
F 1 "Program/Run" V 3500 2400 50  0000 L CNN
F 2 "" H 3550 2950 50  0001 C CNN
F 3 "~" H 3550 2950 50  0001 C CNN
	1    3550 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2850 3550 2750
Wire Wire Line
	3550 2750 4250 2750
Connection ~ 4250 2750
Wire Wire Line
	4250 2750 4250 2800
Wire Wire Line
	3550 3050 3550 3200
Wire Wire Line
	3550 3200 3700 3200
Text GLabel 2550 950  0    50   Input ~ 0
RESET
Wire Wire Line
	2550 950  2900 950 
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 60CAA1FC
P 3100 850
F 0 "J1" H 3180 892 50  0000 L CNN
F 1 "Conn_01x05" H 3180 801 50  0000 L CNN
F 2 "" H 3100 850 50  0001 C CNN
F 3 "~" H 3100 850 50  0001 C CNN
	1    3100 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60CAB591
P 1550 800
F 0 "C1" H 1665 846 50  0000 L CNN
F 1 "1uF" H 1665 755 50  0000 L CNN
F 2 "" H 1588 650 50  0001 C CNN
F 3 "~" H 1550 800 50  0001 C CNN
	1    1550 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 650  1350 650 
Wire Wire Line
	1350 650  1350 750 
Wire Wire Line
	1350 750  1250 750 
Connection ~ 1250 750 
Wire Wire Line
	1550 950  1350 950 
Wire Wire Line
	1350 950  1350 850 
Wire Wire Line
	1350 850  1250 850 
Connection ~ 1250 850 
$Comp
L Jumper:Jumper_3_Open JP?
U 1 1 60CAD104
P 4450 1250
F 0 "JP?" V 4404 1337 50  0000 L CNN
F 1 "Jumper_3_Open" V 4495 1337 50  0000 L CNN
F 2 "" H 4450 1250 50  0001 C CNN
F 3 "~" H 4450 1250 50  0001 C CNN
	1    4450 1250
	0    1    1    0   
$EndComp
Text GLabel 4200 1250 0    50   Input ~ 0
Orientation
Wire Wire Line
	4200 1250 4300 1250
Text GLabel 5200 3400 2    50   Input ~ 0
Orientation
Wire Wire Line
	5200 3400 5100 3400
Wire Wire Line
	5100 3400 5100 3300
Connection ~ 5100 3300
Wire Wire Line
	5100 3300 4850 3300
Wire Wire Line
	5200 3550 4950 3550
Wire Wire Line
	4950 3550 4950 3400
Wire Wire Line
	4950 3400 4850 3400
Text Notes 2250 3150 0    50   ~ 0
22 - WHT
Text Notes 2250 3950 0    50   ~ 0
22 - YLW
$Comp
L Device:R R?
U 1 1 611701B3
P 4600 1700
F 0 "R?" V 4393 1700 50  0000 C CNN
F 1 "10k" V 4484 1700 50  0000 C CNN
F 2 "" V 4530 1700 50  0001 C CNN
F 3 "~" H 4600 1700 50  0001 C CNN
	1    4600 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611706DF
P 4850 1750
F 0 "#PWR?" H 4850 1500 50  0001 C CNN
F 1 "GND" H 4855 1577 50  0000 C CNN
F 2 "" H 4850 1750 50  0001 C CNN
F 3 "" H 4850 1750 50  0001 C CNN
	1    4850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1700 4850 1700
Wire Wire Line
	4850 1700 4850 1750
Wire Wire Line
	4450 1500 4450 1700
NoConn ~ 4450 1000
$EndSCHEMATC
