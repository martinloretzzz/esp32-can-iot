EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "CAN_Analyzer - CAN_Transceivers"
Date "2020-09-07"
Rev "1.0"
Comp "NewTec Gmbh."
Comment1 "Reyes, Gabryel"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR06
U 1 1 5F9161C7
P 2840 3535
F 0 "#PWR06" H 2840 3285 50  0001 C CNN
F 1 "GND" H 2845 3362 50  0000 C CNN
F 2 "" H 2840 3535 50  0001 C CNN
F 3 "" H 2840 3535 50  0001 C CNN
	1    2840 3535
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5F913497
P 9450 2050
F 0 "#PWR08" H 9450 1900 50  0001 C CNN
F 1 "+3.3V" H 9465 2223 50  0000 C CNN
F 2 "" H 9450 2050 50  0001 C CNN
F 3 "" H 9450 2050 50  0001 C CNN
	1    9450 2050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F91316D
P 9050 4300
F 0 "#PWR07" H 9050 4050 50  0001 C CNN
F 1 "GND" H 9055 4127 50  0000 C CNN
F 2 "" H 9050 4300 50  0001 C CNN
F 3 "" H 9050 4300 50  0001 C CNN
	1    9050 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2840 3535 2840 3455
$Comp
L Device:C C4
U 1 1 5F5F1385
P 3185 3750
F 0 "C4" H 3300 3796 50  0000 L CNN
F 1 "100p" H 3300 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3223 3600 50  0001 C CNN
F 3 "~" H 3185 3750 50  0001 C CNN
	1    3185 3750
	1    0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5F5F137F
P 3185 3205
F 0 "C5" H 3300 3251 50  0000 L CNN
F 1 "100p" H 3300 3160 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3223 3055 50  0001 C CNN
F 3 "~" H 3185 3205 50  0001 C CNN
	1    3185 3205
	1    0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 5F5F1365
P 5335 3480
F 0 "C6" H 5450 3526 50  0000 L CNN
F 1 "100p" H 5450 3435 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5373 3330 50  0001 C CNN
F 3 "~" H 5335 3480 50  0001 C CNN
	1    5335 3480
	1    0    0    1   
$EndComp
Wire Wire Line
	5935 3455 5935 3310
Connection ~ 5935 3455
Wire Wire Line
	5935 3605 5935 3455
$Comp
L Device:C C7
U 1 1 5F5F1351
P 6240 3455
F 0 "C7" H 6355 3501 50  0000 L CNN
F 1 "4n" H 6355 3410 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6278 3305 50  0001 C CNN
F 3 "~" H 6240 3455 50  0001 C CNN
	1    6240 3455
	0    -1   1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F5F134B
P 5935 3160
F 0 "R7" H 6005 3206 50  0000 L CNN
F 1 "62" H 6005 3115 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5865 3160 50  0001 C CNN
F 3 "~" H 5935 3160 50  0001 C CNN
	1    5935 3160
	1    0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5F5F1345
P 5935 3755
F 0 "R6" H 6005 3801 50  0000 L CNN
F 1 "62" H 6005 3710 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5865 3755 50  0001 C CNN
F 3 "~" H 5935 3755 50  0001 C CNN
	1    5935 3755
	1    0    0    1   
$EndComp
Text Notes 7555 2595 0    50   ~ 0
Transceiver
Wire Wire Line
	8505 3385 9155 3385
Wire Wire Line
	9155 3485 8505 3485
Text HLabel 9155 3485 2    50   Input ~ 0
CAN_Tx
Text HLabel 9155 3385 2    50   Output ~ 0
CAN_Rx
Text HLabel 1935 4205 0    50   BiDi ~ 0
BUS_H
Text HLabel 1935 2705 0    50   BiDi ~ 0
BUS_L
$Comp
L Board:PESD1CAN D1
U 1 1 5FA9220A
P 2240 3255
F 0 "D1" H 2445 3105 50  0000 C CNN
F 1 "PESD1CAN" H 2445 3205 50  0000 C CNN
F 2 "Board:SOT23-3" H 2240 3255 50  0001 L BNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESD1CAN.pdf" H 2240 3255 50  0001 L BNN
F 4 "DIO-12501" H 2240 3255 50  0001 L BNN "PROD_ID"
F 5 "Yes" H 2240 3255 50  0001 C CNN "Vorhanden"
	1    2240 3255
	1    0    0    1   
$EndComp
$Comp
L Board-rescue:744242220-SamacSys_Parts L2
U 1 1 5FA954C1
P 4960 3515
AR Path="/5FA954C1" Ref="L2"  Part="1" 
AR Path="/5F562A6B/5FA954C1" Ref="L2"  Part="1" 
F 0 "L2" H 5370 3180 50  0000 C CNN
F 1 "744242220" H 5370 3265 50  0000 C CNN
F 2 "SamacSys_Parts:WE-SLM77" H 5610 3615 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/744242220.pdf" H 5610 3515 50  0001 L CNN
F 4 "Wurth WE-SLM Series Wire-wound SMD Inductor with a Ferrite Core, 22 uH +50/-30 300mA Idc" H 5610 3415 50  0001 L CNN "Description"
F 5 "" H 5610 3315 50  0001 L CNN "Height"
F 6 "710-744242220" H 5610 3215 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=710-744242220" H 5610 3115 50  0001 L CNN "Mouser Price/Stock"
F 8 "Wurth Elektronik" H 5610 3015 50  0001 L CNN "Manufacturer_Name"
F 9 "744242220" H 5610 2915 50  0001 L CNN "Manufacturer_Part_Number"
	1    4960 3515
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5FB22CE5
P 4560 4205
F 0 "R4" V 4660 4200 50  0000 C CNN
F 1 "0" V 4444 4205 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4490 4205 50  0001 C CNN
F 3 "~" H 4560 4205 50  0001 C CNN
F 4 "NP" V 4560 4205 50  0000 C CNN "NP"
	1    4560 4205
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FAB0F55
P 8755 4300
F 0 "#PWR0101" H 8755 4050 50  0001 C CNN
F 1 "GND" H 8760 4127 50  0000 C CNN
F 2 "" H 8755 4300 50  0001 C CNN
F 3 "" H 8755 4300 50  0001 C CNN
	1    8755 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8505 3685 8755 3685
Wire Wire Line
	8505 3885 8520 3885
Wire Wire Line
	2040 3555 2040 4205
Wire Wire Line
	2040 3355 2040 2705
Wire Wire Line
	4710 4205 4960 4205
$Comp
L Device:R R5
U 1 1 5FB23167
P 4560 2705
F 0 "R5" V 4660 2700 50  0000 C CNN
F 1 "0" V 4444 2705 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4490 2705 50  0001 C CNN
F 3 "~" H 4560 2705 50  0001 C CNN
F 4 "NP" V 4560 2705 50  0000 C CNN "NP"
	1    4560 2705
	0    1    -1   0   
$EndComp
Wire Wire Line
	4710 2705 4960 2705
Wire Wire Line
	4160 3415 4160 2705
Connection ~ 4160 2705
Wire Wire Line
	4160 2705 4410 2705
Wire Wire Line
	4160 3515 4160 4205
Connection ~ 4160 4205
Wire Wire Line
	4160 4205 4410 4205
Wire Wire Line
	4960 3515 4960 4205
Connection ~ 4960 4205
Wire Wire Line
	4960 4205 5335 4205
Wire Wire Line
	4960 3415 4960 2705
Connection ~ 4960 2705
Wire Wire Line
	4960 2705 5335 2705
Wire Wire Line
	5335 3630 5335 4205
Connection ~ 5335 4205
Wire Wire Line
	5335 4205 5935 4205
Wire Wire Line
	5335 3330 5335 2705
Connection ~ 5335 2705
Wire Wire Line
	5335 2705 5935 2705
Wire Wire Line
	5935 3905 5935 4205
Connection ~ 5935 4205
Wire Wire Line
	5935 4205 7105 4205
Wire Wire Line
	5935 3010 5935 2705
Connection ~ 5935 2705
Wire Wire Line
	1935 2705 2040 2705
Wire Wire Line
	1935 4205 2040 4205
Connection ~ 2040 4205
Wire Wire Line
	2040 4205 3185 4205
Connection ~ 2040 2705
Wire Wire Line
	2040 2705 3185 2705
Wire Wire Line
	3185 3600 3185 3460
Wire Wire Line
	3185 3900 3185 4205
Connection ~ 3185 4205
Wire Wire Line
	3185 4205 4160 4205
Wire Wire Line
	3185 3055 3185 2705
Connection ~ 3185 2705
Wire Wire Line
	3185 2705 4160 2705
Wire Wire Line
	3185 3460 3685 3460
Wire Wire Line
	3685 3460 3685 3535
Connection ~ 3185 3460
Wire Wire Line
	3185 3460 3185 3355
$Comp
L power:GND #PWR026
U 1 1 5FB9EB9C
P 6600 3530
F 0 "#PWR026" H 6600 3280 50  0001 C CNN
F 1 "GND" H 6605 3357 50  0000 C CNN
F 2 "" H 6600 3530 50  0001 C CNN
F 3 "" H 6600 3530 50  0001 C CNN
	1    6600 3530
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5FB9F7A9
P 3685 3535
F 0 "#PWR025" H 3685 3285 50  0001 C CNN
F 1 "GND" H 3690 3362 50  0000 C CNN
F 2 "" H 3685 3535 50  0001 C CNN
F 3 "" H 3685 3535 50  0001 C CNN
	1    3685 3535
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6090 3455 5935 3455
Text Notes 4800 2530 2    50   ~ 0
Signal Filter
Wire Wire Line
	5935 2705 7105 2705
Wire Wire Line
	7105 4205 7105 3285
Wire Wire Line
	7105 3185 7105 2705
$Comp
L Board:SN65HVD233-HT IC1
U 1 1 5F565F75
P 7805 3485
F 0 "IC1" H 7805 4130 50  0000 C CNN
F 1 "SN65HVD233-HT" H 7805 4035 50  0000 C CNN
F 2 "Board:SOIC127P600X175" H 7805 3485 50  0001 L BNN
F 3 "https://www.ti.com/lit/ds/symlink/sn65hvd233-ht.pdf?HQS=TI-null-null-alldatasheets-df-pf-SEP-wwe" H 7805 3485 50  0001 C CNN
	1    7805 3485
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8520 3885 8520 4300
$Comp
L power:GND #PWR0102
U 1 1 5FAB15C4
P 8520 4300
F 0 "#PWR0102" H 8520 4050 50  0001 C CNN
F 1 "GND" H 8525 4127 50  0000 C CNN
F 2 "" H 8520 4300 50  0001 C CNN
F 3 "" H 8520 4300 50  0001 C CNN
	1    8520 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8755 3685 8755 3825
$Comp
L Device:R R21
U 1 1 5FBDD81B
P 8755 3975
F 0 "R21" H 8825 4021 50  0000 L CNN
F 1 "0" H 8825 3930 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8685 3975 50  0001 C CNN
F 3 "~" H 8755 3975 50  0001 C CNN
	1    8755 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8755 4125 8755 4300
Wire Wire Line
	9050 4300 9050 3585
Wire Wire Line
	8505 3585 9050 3585
Wire Wire Line
	6600 3455 6600 3530
Wire Wire Line
	6390 3455 6600 3455
$Comp
L Device:C C17
U 1 1 5FBA0AB2
P 9450 2425
F 0 "C17" H 9565 2471 50  0000 L CNN
F 1 "100n" H 9565 2380 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9488 2275 50  0001 C CNN
F 3 "~" H 9450 2425 50  0001 C CNN
	1    9450 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2050 9450 2175
Wire Wire Line
	9450 2175 8900 2175
Connection ~ 9450 2175
Wire Wire Line
	9450 2175 9450 2275
Wire Wire Line
	8505 3185 8900 3185
Wire Wire Line
	8900 2175 8900 3185
Wire Wire Line
	9450 2575 9450 2700
$Comp
L power:GND #PWR0104
U 1 1 5FBA5D45
P 9450 2700
F 0 "#PWR0104" H 9450 2450 50  0001 C CNN
F 1 "GND" H 9455 2527 50  0000 C CNN
F 2 "" H 9450 2700 50  0001 C CNN
F 3 "" H 9450 2700 50  0001 C CNN
	1    9450 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
