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
L MCU_Microchip_ATtiny:ATtiny85-20PU U2
U 1 1 60DB53F1
P 3400 3250
F 0 "U2" H 2871 3296 50  0000 R CNN
F 1 "ATtiny85-20PU" H 2871 3205 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3400 3250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 3400 3250 50  0001 C CNN
	1    3400 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 60DB5A68
P 950 2300
F 0 "J2" H 868 1875 50  0000 C CNN
F 1 "Conn_01x05" H 868 1966 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 950 2300 50  0001 C CNN
F 3 "~" H 950 2300 50  0001 C CNN
	1    950  2300
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 60DB7161
P 2250 950
F 0 "U1" H 2250 1192 50  0000 C CNN
F 1 "L7805 TO220" H 2250 1101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2275 800 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2250 900 50  0001 C CNN
	1    2250 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 60DB81A0
P 900 950
F 0 "J1" H 818 1167 50  0000 C CNN
F 1 "Input Connector" H 818 1076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 900 950 50  0001 C CNN
F 3 "~" H 900 950 50  0001 C CNN
	1    900  950 
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 60DB90C1
P 2650 850
F 0 "#PWR04" H 2650 700 50  0001 C CNN
F 1 "+5V" H 2665 1023 50  0000 C CNN
F 2 "" H 2650 850 50  0001 C CNN
F 3 "" H 2650 850 50  0001 C CNN
	1    2650 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60DB96DB
P 2250 1350
F 0 "#PWR03" H 2250 1100 50  0001 C CNN
F 1 "GND" H 2255 1177 50  0000 C CNN
F 2 "" H 2250 1350 50  0001 C CNN
F 3 "" H 2250 1350 50  0001 C CNN
	1    2250 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60DB9C70
P 1200 1150
F 0 "#PWR01" H 1200 900 50  0001 C CNN
F 1 "GND" H 1205 977 50  0000 C CNN
F 2 "" H 1200 1150 50  0001 C CNN
F 3 "" H 1200 1150 50  0001 C CNN
	1    1200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 950  1800 950 
Wire Wire Line
	1200 1150 1200 1050
Wire Wire Line
	1200 1050 1100 1050
Wire Wire Line
	2250 1350 2250 1300
Wire Wire Line
	2650 850  2650 950 
Wire Wire Line
	2650 950  2550 950 
Text GLabel 1300 2200 2    50   Input ~ 0
RESET
Text GLabel 1300 2300 2    50   Input ~ 0
SDA-MOSI
Text GLabel 1300 2400 2    50   Input ~ 0
MISO
Text GLabel 1300 2500 2    50   Input ~ 0
SCL-SCK
Wire Wire Line
	1150 2200 1300 2200
Wire Wire Line
	1150 2300 1300 2300
Wire Wire Line
	1150 2400 1300 2400
Wire Wire Line
	1150 2500 1300 2500
$Comp
L power:GND #PWR02
U 1 1 60DBAFF1
P 1450 2000
F 0 "#PWR02" H 1450 1750 50  0001 C CNN
F 1 "GND" H 1455 1827 50  0000 C CNN
F 2 "" H 1450 2000 50  0001 C CNN
F 3 "" H 1450 2000 50  0001 C CNN
	1    1450 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 2100 1450 2000
Wire Wire Line
	1150 2100 1450 2100
Wire Bus Line
	6400 3100 8000 3100
$Comp
L Motor:Motor_Servo M1
U 1 1 60DBBE93
P 6100 3250
F 0 "M1" H 6050 2950 50  0000 L CNN
F 1 "Motor_Servo" H 5900 3050 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6100 3060 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 6100 3060 50  0001 C CNN
	1    6100 3250
	1    0    0    -1  
$EndComp
Text Notes 6450 3100 0    50   ~ 0
Cable to go to gas motor
$Comp
L power:GND #PWR08
U 1 1 60DBD375
P 5700 3400
F 0 "#PWR08" H 5700 3150 50  0001 C CNN
F 1 "GND" H 5705 3227 50  0000 C CNN
F 2 "" H 5700 3400 50  0001 C CNN
F 3 "" H 5700 3400 50  0001 C CNN
	1    5700 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 60DBDC58
P 5500 3400
F 0 "#PWR07" H 5500 3250 50  0001 C CNN
F 1 "+5V" H 5515 3573 50  0000 C CNN
F 2 "" H 5500 3400 50  0001 C CNN
F 3 "" H 5500 3400 50  0001 C CNN
	1    5500 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 3250 5500 3250
Wire Wire Line
	5500 3250 5500 3400
Wire Wire Line
	5700 3400 5700 3350
Wire Wire Line
	5700 3350 5800 3350
Text GLabel 4200 3050 2    50   Input ~ 0
Servo_PWM
Text GLabel 5700 3150 0    50   Input ~ 0
Servo_PWM
Wire Wire Line
	5700 3150 5800 3150
Wire Wire Line
	4000 3050 4150 3050
Text GLabel 4200 3450 2    50   Input ~ 0
RESET
Text GLabel 4200 3150 2    50   Input ~ 0
SCL-SCK
Text GLabel 4700 2950 2    50   Input ~ 0
MISO
Text GLabel 4200 2850 2    50   Input ~ 0
SDA-MOSI
Wire Wire Line
	4150 3050 4150 2950
Wire Wire Line
	4150 2950 4700 2950
Connection ~ 4150 3050
Wire Wire Line
	4150 3050 4200 3050
Wire Wire Line
	4000 2950 4100 2950
Wire Wire Line
	4100 2950 4100 2850
Wire Wire Line
	4100 2850 4200 2850
Wire Wire Line
	4000 3150 4200 3150
Wire Wire Line
	4200 3450 4000 3450
$Comp
L power:+5V #PWR05
U 1 1 60DC1816
P 3400 2550
F 0 "#PWR05" H 3400 2400 50  0001 C CNN
F 1 "+5V" H 3415 2723 50  0000 C CNN
F 2 "" H 3400 2550 50  0001 C CNN
F 3 "" H 3400 2550 50  0001 C CNN
	1    3400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60DC21B6
P 3400 3950
F 0 "#PWR06" H 3400 3700 50  0001 C CNN
F 1 "GND" H 3405 3777 50  0000 C CNN
F 2 "" H 3400 3950 50  0001 C CNN
F 3 "" H 3400 3950 50  0001 C CNN
	1    3400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2550 3400 2650
Wire Wire Line
	3400 3850 3400 3950
NoConn ~ 4000 3250
NoConn ~ 4000 3350
Text Notes 2700 950  0    39   ~ 0
Must have heatsink\ncan dissipate up to 10.5W
$Comp
L Device:C C2
U 1 1 60DC4084
P 2650 1150
F 0 "C2" H 2765 1196 50  0000 L CNN
F 1 "1uF" H 2765 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2688 1000 50  0001 C CNN
F 3 "~" H 2650 1150 50  0001 C CNN
	1    2650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1000 2650 950 
Connection ~ 2650 950 
Wire Wire Line
	2650 1300 2250 1300
Connection ~ 2250 1300
Wire Wire Line
	2250 1300 2250 1250
$Comp
L Device:C C1
U 1 1 60DC5177
P 1800 1150
F 0 "C1" H 1915 1196 50  0000 L CNN
F 1 "1uF" H 1915 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1838 1000 50  0001 C CNN
F 3 "~" H 1800 1150 50  0001 C CNN
	1    1800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1000 1800 950 
Connection ~ 1800 950 
Wire Wire Line
	1800 950  1950 950 
Wire Wire Line
	1800 1300 2250 1300
$Comp
L Motor:Fan M2
U 1 1 60DC6F25
P 4250 1100
F 0 "M2" H 4408 1196 50  0000 L CNN
F 1 "Fan" H 4408 1105 50  0000 L CNN
F 2 "" H 4250 1110 50  0001 C CNN
F 3 "~" H 4250 1110 50  0001 C CNN
	1    4250 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR09
U 1 1 60DC8B16
P 1800 850
F 0 "#PWR09" H 1800 700 50  0001 C CNN
F 1 "+12V" H 1815 1023 50  0000 C CNN
F 2 "" H 1800 850 50  0001 C CNN
F 3 "" H 1800 850 50  0001 C CNN
	1    1800 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 850  1800 950 
$Comp
L power:+12V #PWR010
U 1 1 60DC9B75
P 4250 700
F 0 "#PWR010" H 4250 550 50  0001 C CNN
F 1 "+12V" H 4265 873 50  0000 C CNN
F 2 "" H 4250 700 50  0001 C CNN
F 3 "" H 4250 700 50  0001 C CNN
	1    4250 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60DCA28D
P 4250 1400
F 0 "#PWR011" H 4250 1150 50  0001 C CNN
F 1 "GND" H 4255 1227 50  0000 C CNN
F 2 "" H 4250 1400 50  0001 C CNN
F 3 "" H 4250 1400 50  0001 C CNN
	1    4250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 700  4250 800 
Wire Wire Line
	4250 1300 4250 1400
$EndSCHEMATC
