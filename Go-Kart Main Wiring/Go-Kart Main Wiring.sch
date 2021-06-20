EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	8400 700  8400 1350
Wire Notes Line
	8400 1350 9750 1350
Wire Notes Line
	9750 1350 9750 700 
Wire Notes Line
	9750 700  8400 700 
Text Notes 8750 700  0    50   ~ 0
Motor Controller
Wire Notes Line
	6950 5750 6950 6400
Wire Notes Line
	6950 6400 8300 6400
Wire Notes Line
	8300 6400 8300 5750
Wire Notes Line
	8300 5750 6950 5750
Text Notes 7500 5750 0    50   ~ 0
Throttle
$Comp
L Connector:Raspberry_Pi_2_3 J?
U 1 1 60CE677B
P 3450 3000
F 0 "J?" H 3450 4481 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 3450 4390 50  0000 C CNN
F 2 "" H 3450 3000 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 3450 3000 50  0001 C CNN
	1    3450 3000
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 60CF98FA
P 10400 850
F 0 "M?" V 10695 800 50  0000 C CNN
F 1 "Motor_DC" V 10604 800 50  0000 C CNN
F 2 "" H 10400 760 50  0001 C CNN
F 3 "~" H 10400 760 50  0001 C CNN
	1    10400 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 850  9750 850 
Wire Wire Line
	10700 850  10850 850 
Wire Wire Line
	10850 850  10850 1200
Wire Wire Line
	10850 1200 9750 1200
Text Notes 9800 850  0    30   ~ 0
RED-10
Text Notes 9800 1200 0    30   ~ 0
BLK-10
Text Notes 6100 6300 0    30   ~ 0
GND-22-BLK
Wire Wire Line
	6100 5900 6550 5900
Wire Wire Line
	6100 6000 6550 6000
Wire Wire Line
	6100 6200 6550 6200
Text Notes 6100 5900 0    30   ~ 0
SCL/SCK-22-WHT
Text Notes 6100 6000 0    30   ~ 0
MISO-22-GRN
Text Notes 6100 6100 0    30   ~ 0
SDA/MOSI-22-YLW
Text Notes 6100 6200 0    30   ~ 0
RESET-22-BLU
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 60CEBCE6
P 6750 6100
F 0 "J?" H 6650 6350 50  0000 L CNN
F 1 "Throttle Cable" V 6800 5850 50  0000 L CNN
F 2 "" H 6750 6100 50  0001 C CNN
F 3 "~" H 6750 6100 50  0001 C CNN
	1    6750 6100
	1    0    0    -1  
$EndComp
Text Notes 7650 1250 0    30   ~ 0
GND-22-BLK
Wire Wire Line
	7650 850  8100 850 
Wire Wire Line
	7650 950  8100 950 
Wire Wire Line
	7650 1150 8100 1150
Text Notes 7650 950  0    30   ~ 0
SCL/SCK-22-WHT
Text Notes 7650 1050 0    30   ~ 0
MISO-22-GRN
Text Notes 7650 1150 0    30   ~ 0
SDA/MOSI-22-YLW
Text Notes 7650 850  0    30   ~ 0
RESET-22-BLU
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 60D03255
P 8300 1050
F 0 "J?" H 8200 1300 50  0000 L CNN
F 1 "Motor Cable" V 8350 850 50  0000 L CNN
F 2 "" H 8300 1050 50  0001 C CNN
F 3 "~" H 8300 1050 50  0001 C CNN
	1    8300 1050
	1    0    0    -1  
$EndComp
Text Notes 7250 600  0    30   ~ 0
Note: Reset and MISO are not used during normal operation\nand are only connected when programming
Text GLabel 7650 950  0    30   Input ~ 0
SCL_1
Text GLabel 7650 1150 0    30   Input ~ 0
SDA_1
$Comp
L power:GND #PWR?
U 1 1 60D27FA6
P 7600 1300
F 0 "#PWR?" H 7600 1050 50  0001 C CNN
F 1 "GND" H 7605 1127 50  0000 C CNN
F 2 "" H 7600 1300 50  0001 C CNN
F 3 "" H 7600 1300 50  0001 C CNN
	1    7600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1300 7600 1250
Wire Wire Line
	7600 1250 8100 1250
Wire Wire Line
	8100 1050 7650 1050
Wire Notes Line
	8400 1500 8400 2150
Wire Notes Line
	8400 2150 9750 2150
Wire Notes Line
	9750 2150 9750 1500
Wire Notes Line
	9750 1500 8400 1500
Text Notes 8750 1500 0    50   ~ 0
Motor Controller
$Comp
L Motor:Motor_DC M?
U 1 1 60D301E0
P 10400 1650
F 0 "M?" V 10695 1600 50  0000 C CNN
F 1 "Motor_DC" V 10604 1600 50  0000 C CNN
F 2 "" H 10400 1560 50  0001 C CNN
F 3 "~" H 10400 1560 50  0001 C CNN
	1    10400 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 1650 9750 1650
Wire Wire Line
	10700 1650 10850 1650
Wire Wire Line
	10850 1650 10850 2000
Wire Wire Line
	10850 2000 9750 2000
Text Notes 9800 1650 0    30   ~ 0
RED-10
Text Notes 9800 2000 0    30   ~ 0
BLK-10
Text Notes 7650 2050 0    30   ~ 0
GND-22-BLK
Wire Wire Line
	7650 1650 8100 1650
Wire Wire Line
	7650 1750 8100 1750
Wire Wire Line
	7650 1950 8100 1950
Text Notes 7650 1750 0    30   ~ 0
SCL/SCK-22-WHT
Text Notes 7650 1850 0    30   ~ 0
MISO-22-GRN
Text Notes 7650 1950 0    30   ~ 0
SDA/MOSI-22-YLW
Text Notes 7650 1650 0    30   ~ 0
RESET-22-BLU
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 60D301F4
P 8300 1850
F 0 "J?" H 8200 2100 50  0000 L CNN
F 1 "Motor Cable" V 8350 1650 50  0000 L CNN
F 2 "" H 8300 1850 50  0001 C CNN
F 3 "~" H 8300 1850 50  0001 C CNN
	1    8300 1850
	1    0    0    -1  
$EndComp
Text GLabel 7650 1750 0    30   Input ~ 0
SCL_2
Text GLabel 7650 1950 0    30   Input ~ 0
SDA_2
$Comp
L power:GND #PWR?
U 1 1 60D301FC
P 7600 2100
F 0 "#PWR?" H 7600 1850 50  0001 C CNN
F 1 "GND" H 7605 1927 50  0000 C CNN
F 2 "" H 7600 2100 50  0001 C CNN
F 3 "" H 7600 2100 50  0001 C CNN
	1    7600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2100 7600 2050
Wire Wire Line
	7600 2050 8100 2050
Wire Wire Line
	8100 1850 7650 1850
Wire Notes Line
	8400 2300 8400 2950
Wire Notes Line
	8400 2950 9750 2950
Wire Notes Line
	9750 2950 9750 2300
Wire Notes Line
	9750 2300 8400 2300
Text Notes 8750 2300 0    50   ~ 0
Motor Controller
$Comp
L Motor:Motor_DC M?
U 1 1 60D319EF
P 10400 2450
F 0 "M?" V 10695 2400 50  0000 C CNN
F 1 "Motor_DC" V 10604 2400 50  0000 C CNN
F 2 "" H 10400 2360 50  0001 C CNN
F 3 "~" H 10400 2360 50  0001 C CNN
	1    10400 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 2450 9750 2450
Wire Wire Line
	10700 2450 10850 2450
Wire Wire Line
	10850 2450 10850 2800
Wire Wire Line
	10850 2800 9750 2800
Text Notes 9800 2450 0    30   ~ 0
RED-10
Text Notes 9800 2800 0    30   ~ 0
BLK-10
Text Notes 7650 2850 0    30   ~ 0
GND-22-BLK
Wire Wire Line
	7650 2450 8100 2450
Wire Wire Line
	7650 2550 8100 2550
Wire Wire Line
	7650 2750 8100 2750
Text Notes 7650 2550 0    30   ~ 0
SCL/SCK-22-WHT
Text Notes 7650 2650 0    30   ~ 0
MISO-22-GRN
Text Notes 7650 2750 0    30   ~ 0
SDA/MOSI-22-YLW
Text Notes 7650 2450 0    30   ~ 0
RESET-22-BLU
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 60D31A03
P 8300 2650
F 0 "J?" H 8200 2900 50  0000 L CNN
F 1 "Motor Cable" V 8350 2450 50  0000 L CNN
F 2 "" H 8300 2650 50  0001 C CNN
F 3 "~" H 8300 2650 50  0001 C CNN
	1    8300 2650
	1    0    0    -1  
$EndComp
Text GLabel 7650 2550 0    30   Input ~ 0
SCL_3
Text GLabel 7650 2750 0    30   Input ~ 0
SDA_3
$Comp
L power:GND #PWR?
U 1 1 60D31A0B
P 7600 2900
F 0 "#PWR?" H 7600 2650 50  0001 C CNN
F 1 "GND" H 7605 2727 50  0000 C CNN
F 2 "" H 7600 2900 50  0001 C CNN
F 3 "" H 7600 2900 50  0001 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2900 7600 2850
Wire Wire Line
	7600 2850 8100 2850
Wire Wire Line
	8100 2650 7650 2650
Wire Notes Line
	8400 3100 8400 3750
Wire Notes Line
	8400 3750 9750 3750
Wire Notes Line
	9750 3750 9750 3100
Wire Notes Line
	9750 3100 8400 3100
Text Notes 8750 3100 0    50   ~ 0
Motor Controller
$Comp
L Motor:Motor_DC M?
U 1 1 60D32F66
P 10400 3250
F 0 "M?" V 10695 3200 50  0000 C CNN
F 1 "Motor_DC" V 10604 3200 50  0000 C CNN
F 2 "" H 10400 3160 50  0001 C CNN
F 3 "~" H 10400 3160 50  0001 C CNN
	1    10400 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 3250 9750 3250
Wire Wire Line
	10700 3250 10850 3250
Wire Wire Line
	10850 3250 10850 3600
Wire Wire Line
	10850 3600 9750 3600
Text Notes 9800 3250 0    30   ~ 0
RED-10
Text Notes 9800 3600 0    30   ~ 0
BLK-10
Text Notes 7650 3650 0    30   ~ 0
GND-22-BLK
Wire Wire Line
	7650 3250 8100 3250
Wire Wire Line
	7650 3350 8100 3350
Wire Wire Line
	7650 3550 8100 3550
Text Notes 7650 3350 0    30   ~ 0
SCL/SCK-22-WHT
Text Notes 7650 3450 0    30   ~ 0
MISO-22-GRN
Text Notes 7650 3550 0    30   ~ 0
SDA/MOSI-22-YLW
Text Notes 7650 3250 0    30   ~ 0
RESET-22-BLU
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 60D32F7A
P 8300 3450
F 0 "J?" H 8200 3700 50  0000 L CNN
F 1 "Motor Cable" V 8350 3250 50  0000 L CNN
F 2 "" H 8300 3450 50  0001 C CNN
F 3 "~" H 8300 3450 50  0001 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
Text GLabel 7650 3350 0    30   Input ~ 0
SCL_4
Text GLabel 7650 3550 0    30   Input ~ 0
SDA_4
$Comp
L power:GND #PWR?
U 1 1 60D32F82
P 7600 3700
F 0 "#PWR?" H 7600 3450 50  0001 C CNN
F 1 "GND" H 7605 3527 50  0000 C CNN
F 2 "" H 7600 3700 50  0001 C CNN
F 3 "" H 7600 3700 50  0001 C CNN
	1    7600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3700 7600 3650
Wire Wire Line
	7600 3650 8100 3650
Wire Wire Line
	8100 3450 7650 3450
Wire Notes Line
	8400 3900 8400 4550
Wire Notes Line
	8400 4550 9750 4550
Wire Notes Line
	9750 4550 9750 3900
Wire Notes Line
	9750 3900 8400 3900
Text Notes 8750 3900 0    50   ~ 0
Motor Controller
$Comp
L Motor:Motor_DC M?
U 1 1 60D360F9
P 10400 4050
F 0 "M?" V 10695 4000 50  0000 C CNN
F 1 "Motor_DC" V 10604 4000 50  0000 C CNN
F 2 "" H 10400 3960 50  0001 C CNN
F 3 "~" H 10400 3960 50  0001 C CNN
	1    10400 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 4050 9750 4050
Wire Wire Line
	10700 4050 10850 4050
Wire Wire Line
	10850 4050 10850 4400
Wire Wire Line
	10850 4400 9750 4400
Text Notes 9800 4050 0    30   ~ 0
RED-10
Text Notes 9800 4400 0    30   ~ 0
BLK-10
Text Notes 7650 4450 0    30   ~ 0
GND-22-BLK
Wire Wire Line
	7650 4050 8100 4050
Wire Wire Line
	7650 4150 8100 4150
Wire Wire Line
	7650 4350 8100 4350
Text Notes 7650 4150 0    30   ~ 0
SCL/SCK-22-WHT
Text Notes 7650 4250 0    30   ~ 0
MISO-22-GRN
Text Notes 7650 4350 0    30   ~ 0
SDA/MOSI-22-YLW
Text Notes 7650 4050 0    30   ~ 0
RESET-22-BLU
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 60D3610D
P 8300 4250
F 0 "J?" H 8200 4500 50  0000 L CNN
F 1 "Motor Cable" V 8350 4050 50  0000 L CNN
F 2 "" H 8300 4250 50  0001 C CNN
F 3 "~" H 8300 4250 50  0001 C CNN
	1    8300 4250
	1    0    0    -1  
$EndComp
Text GLabel 7650 4150 0    30   Input ~ 0
SCL_5
Text GLabel 7650 4350 0    30   Input ~ 0
SDA_5
$Comp
L power:GND #PWR?
U 1 1 60D36115
P 7600 4500
F 0 "#PWR?" H 7600 4250 50  0001 C CNN
F 1 "GND" H 7605 4327 50  0000 C CNN
F 2 "" H 7600 4500 50  0001 C CNN
F 3 "" H 7600 4500 50  0001 C CNN
	1    7600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4500 7600 4450
Wire Wire Line
	7600 4450 8100 4450
Wire Wire Line
	8100 4250 7650 4250
Wire Notes Line
	8400 4700 8400 5350
Wire Notes Line
	8400 5350 9750 5350
Wire Notes Line
	9750 5350 9750 4700
Wire Notes Line
	9750 4700 8400 4700
Text Notes 8750 4700 0    50   ~ 0
Motor Controller
$Comp
L Motor:Motor_DC M?
U 1 1 60D39EDC
P 10400 4850
F 0 "M?" V 10695 4800 50  0000 C CNN
F 1 "Motor_DC" V 10604 4800 50  0000 C CNN
F 2 "" H 10400 4760 50  0001 C CNN
F 3 "~" H 10400 4760 50  0001 C CNN
	1    10400 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 4850 9750 4850
Wire Wire Line
	10700 4850 10850 4850
Wire Wire Line
	10850 4850 10850 5200
Wire Wire Line
	10850 5200 9750 5200
Text Notes 9800 4850 0    30   ~ 0
RED-10
Text Notes 9800 5200 0    30   ~ 0
BLK-10
Text Notes 7650 5250 0    30   ~ 0
GND-22-BLK
Wire Wire Line
	7650 4850 8100 4850
Wire Wire Line
	7650 4950 8100 4950
Wire Wire Line
	7650 5150 8100 5150
Text Notes 7650 4950 0    30   ~ 0
SCL/SCK-22-WHT
Text Notes 7650 5050 0    30   ~ 0
MISO-22-GRN
Text Notes 7650 5150 0    30   ~ 0
SDA/MOSI-22-YLW
Text Notes 7650 4850 0    30   ~ 0
RESET-22-BLU
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 60D39EF0
P 8300 5050
F 0 "J?" H 8200 5300 50  0000 L CNN
F 1 "Motor Cable" V 8350 4850 50  0000 L CNN
F 2 "" H 8300 5050 50  0001 C CNN
F 3 "~" H 8300 5050 50  0001 C CNN
	1    8300 5050
	1    0    0    -1  
$EndComp
Text GLabel 7650 4950 0    30   Input ~ 0
SCL_6
Text GLabel 7650 5150 0    30   Input ~ 0
SDA_7
$Comp
L power:GND #PWR?
U 1 1 60D39EF8
P 7600 5300
F 0 "#PWR?" H 7600 5050 50  0001 C CNN
F 1 "GND" H 7605 5127 50  0000 C CNN
F 2 "" H 7600 5300 50  0001 C CNN
F 3 "" H 7600 5300 50  0001 C CNN
	1    7600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5300 7600 5250
Wire Wire Line
	7600 5250 8100 5250
Wire Wire Line
	8100 5050 7650 5050
Text Notes 6100 600  0    30   ~ 0
Note: \nEnsure reset jumper is in place during run time
Wire Wire Line
	6550 6100 6100 6100
Text GLabel 6100 5900 0    30   Input ~ 0
SCL_7
Text GLabel 6100 6100 0    30   Input ~ 0
SDA_7
$Comp
L power:GND #PWR?
U 1 1 60D3FBE3
P 6050 6350
F 0 "#PWR?" H 6050 6100 50  0001 C CNN
F 1 "GND" H 6055 6177 50  0000 C CNN
F 2 "" H 6050 6350 50  0001 C CNN
F 3 "" H 6050 6350 50  0001 C CNN
	1    6050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6300 6050 6350
Wire Wire Line
	6050 6300 6550 6300
$Sheet
S 800  6300 1700 1400
U 60D45E12
F0 "Sheet60D45E11" 30
F1 "Cables.sch" 30
$EndSheet
Text GLabel 6000 2700 2    30   Input ~ 0
SCL
Text GLabel 6000 1750 2    30   Input ~ 0
SDA
$Comp
L Connector:Screw_Terminal_01x08 J?
U 1 1 60D52505
P 5700 1450
F 0 "J?" H 5700 850 50  0000 C CNN
F 1 "SDA BLOCK" H 5700 950 50  0000 C CNN
F 2 "" H 5700 1450 50  0001 C CNN
F 3 "~" H 5700 1450 50  0001 C CNN
	1    5700 1450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x08 J?
U 1 1 60D54223
P 5700 2400
F 0 "J?" H 5700 2800 50  0000 C CNN
F 1 "SCL BLOCK" H 5700 1900 50  0000 C CNN
F 2 "" H 5700 2400 50  0001 C CNN
F 3 "~" H 5700 2400 50  0001 C CNN
	1    5700 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2700 6000 2700
Wire Wire Line
	5900 1750 6000 1750
Text GLabel 6000 2000 2    30   Input ~ 0
SCL_7
Text GLabel 6000 1050 2    30   Input ~ 0
SDA_7
Text GLabel 6000 1150 2    30   Input ~ 0
SDA_6
Text GLabel 6000 1250 2    30   Input ~ 0
SDA_5
Text GLabel 6000 1350 2    30   Input ~ 0
SDA_4
Text GLabel 6000 1450 2    30   Input ~ 0
SDA_3
Text GLabel 6000 1550 2    30   Input ~ 0
SDA_2
Text GLabel 6000 1650 2    30   Input ~ 0
SDA_1
Text GLabel 6000 2100 2    30   Input ~ 0
SCL_6
Text GLabel 6000 2200 2    30   Input ~ 0
SCL_5
Text GLabel 6000 2300 2    30   Input ~ 0
SCL_4
Text GLabel 6000 2400 2    30   Input ~ 0
SCL_3
Text GLabel 6000 2500 2    30   Input ~ 0
SCL_2
Text GLabel 6000 2600 2    30   Input ~ 0
SCL_1
Wire Wire Line
	5900 1050 6000 1050
Wire Wire Line
	5900 1150 6000 1150
Wire Wire Line
	5900 1250 6000 1250
Wire Wire Line
	5900 1350 6000 1350
Wire Wire Line
	5900 1450 6000 1450
Wire Wire Line
	5900 1550 6000 1550
Wire Wire Line
	5900 1650 6000 1650
Wire Wire Line
	5900 2000 6000 2000
Wire Wire Line
	5900 2100 6000 2100
Wire Wire Line
	5900 2200 6000 2200
Wire Wire Line
	5900 2300 6000 2300
Wire Wire Line
	5900 2400 6000 2400
Wire Wire Line
	5900 2500 6000 2500
Wire Wire Line
	5900 2600 6000 2600
Text GLabel 4350 2400 2    30   Input ~ 0
SDA
Text GLabel 4350 2500 2    30   Input ~ 0
SCL
Wire Wire Line
	4250 2400 4350 2400
Wire Wire Line
	4250 2500 4350 2500
$Comp
L power:GND #PWR?
U 1 1 60D936E1
P 3450 4450
F 0 "#PWR?" H 3450 4200 50  0001 C CNN
F 1 "GND" H 3455 4277 50  0000 C CNN
F 2 "" H 3450 4450 50  0001 C CNN
F 3 "" H 3450 4450 50  0001 C CNN
	1    3450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4300 3050 4400
Wire Wire Line
	3450 4400 3450 4450
Wire Wire Line
	3750 4300 3750 4400
Wire Wire Line
	3050 4400 3150 4400
Connection ~ 3450 4400
Wire Wire Line
	3450 4400 3550 4400
Wire Wire Line
	3650 4300 3650 4400
Connection ~ 3650 4400
Wire Wire Line
	3650 4400 3750 4400
Wire Wire Line
	3550 4300 3550 4400
Connection ~ 3550 4400
Wire Wire Line
	3550 4400 3650 4400
Wire Wire Line
	3450 4300 3450 4400
Wire Wire Line
	3350 4300 3350 4400
Connection ~ 3350 4400
Wire Wire Line
	3350 4400 3450 4400
Wire Wire Line
	3250 4300 3250 4400
Connection ~ 3250 4400
Wire Wire Line
	3250 4400 3350 4400
Wire Wire Line
	3150 4300 3150 4400
Connection ~ 3150 4400
Wire Wire Line
	3150 4400 3250 4400
$EndSCHEMATC
