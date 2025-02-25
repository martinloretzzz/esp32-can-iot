EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "CAN_Bus Analyzer - Connector"
Date "2021-02-04"
Rev "1.1"
Comp "NewTec Gmbh."
Comment1 "Reyes, Gabryel"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1725 2650 3    50   ~ 0
OBD_VDD
Text HLabel 1725 1350 1    50   Output ~ 0
OBD_VDD
Text Notes 1510 2935 2    50   ~ 0
DSUB-9 Connector\n
Text HLabel 10455 2820 2    50   BiDi ~ 0
BUS_H
Text HLabel 10455 2320 2    50   BiDi ~ 0
BUS_L
Wire Wire Line
	1275 3375 1725 3375
Wire Wire Line
	1725 1350 1725 3375
Wire Notes Line
	2675 750  725  750 
Wire Notes Line
	725  750  725  4425
Wire Notes Line
	725  4425 2675 4425
Text HLabel 6695 4515 0    50   Input ~ 0
~OBD~\CAN
$Comp
L Board:G5V-2-DC5 K2
U 1 1 5FB1A5F7
P 9730 2620
F 0 "K2" V 9826 1990 50  0000 R CNN
F 1 "G5V-2-DC5" V 9735 1990 50  0000 R CNN
F 2 "Board:RELAY_G5V-2-DC5" H 9730 2620 50  0001 L BNN
F 3 "Relay; E-Mech; Low Signal; DPDT; Cur-Rtg 0.5/2AAC/ADC; Ctrl-V 5DC; Vol-Rtg 125/30AC/DC" H 9730 2620 50  0001 L BNN
F 4 "" H 9730 2620 50  0001 L BNN "Field4"
F 5 "QFN-68 Omron" H 9730 2620 50  0001 L BNN "Field5"
F 6 "Unavailable" H 9730 2620 50  0001 L BNN "Field6"
F 7 "None" H 9730 2620 50  0001 L BNN "Field7"
F 8 "G5V-2-DC5" H 9730 2620 50  0001 L BNN "Field8"
	1    9730 2620
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D7
U 1 1 5FB2B4A7
P 8725 2775
F 0 "D7" V 8679 2855 50  0000 L CNN
F 1 "1N4148" V 8770 2855 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8725 2600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8725 2775 50  0001 C CNN
	1    8725 2775
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 5FB2FAF8
P 8395 4515
F 0 "Q1" H 8586 4561 50  0000 L CNN
F 1 "BC817" H 8586 4470 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8595 4440 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC817.pdf" H 8395 4515 50  0001 L CNN
	1    8395 4515
	1    0    0    -1  
$EndComp
Wire Wire Line
	8725 2625 8725 2215
Wire Wire Line
	9105 2220 9430 2220
Wire Wire Line
	9430 3020 9105 3020
Wire Wire Line
	8495 4715 8495 5115
$Comp
L power:GND #PWR023
U 1 1 5FB36BEA
P 8495 5115
F 0 "#PWR023" H 8495 4865 50  0001 C CNN
F 1 "GND" H 8500 4942 50  0000 C CNN
F 2 "" H 8495 5115 50  0001 C CNN
F 3 "" H 8495 5115 50  0001 C CNN
	1    8495 5115
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5FB372EA
P 7995 4865
F 0 "R18" H 8065 4911 50  0000 L CNN
F 1 "150" H 8065 4820 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7925 4865 50  0001 C CNN
F 3 "~" H 7995 4865 50  0001 C CNN
	1    7995 4865
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5FB379FD
P 7645 4515
F 0 "R17" V 7438 4515 50  0000 C CNN
F 1 "430" V 7529 4515 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7575 4515 50  0001 C CNN
F 3 "~" H 7645 4515 50  0001 C CNN
	1    7645 4515
	0    1    1    0   
$EndComp
Wire Wire Line
	7795 4515 7995 4515
Wire Wire Line
	7995 4715 7995 4515
Connection ~ 7995 4515
Wire Wire Line
	7995 4515 8195 4515
$Comp
L power:GND #PWR022
U 1 1 5FB38603
P 7995 5115
F 0 "#PWR022" H 7995 4865 50  0001 C CNN
F 1 "GND" H 8000 4942 50  0000 C CNN
F 2 "" H 7995 5115 50  0001 C CNN
F 3 "" H 7995 5115 50  0001 C CNN
	1    7995 5115
	1    0    0    -1  
$EndComp
Wire Wire Line
	7995 5015 7995 5115
Wire Wire Line
	7495 4515 6695 4515
Wire Wire Line
	2250 4075 2250 4175
Wire Wire Line
	1275 4075 2250 4075
Wire Wire Line
	1275 3575 3100 3575
Wire Wire Line
	1275 3775 3100 3775
Wire Wire Line
	1275 3975 3100 3975
Wire Wire Line
	2250 4175 3100 4175
Text Label 3100 3575 2    50   ~ 0
Pin_7
Text Label 3100 3775 2    50   ~ 0
Pin_5
Text Label 3100 3975 2    50   ~ 0
Pin_3
Text Label 3100 4175 2    50   ~ 0
Pin_2
Wire Wire Line
	10130 2820 10455 2820
Wire Wire Line
	10130 2620 10455 2620
Text Label 10455 2620 2    50   ~ 0
Pin_7
Wire Wire Line
	10130 3020 10455 3020
Text Label 10455 3020 2    50   ~ 0
Pin_3
Wire Wire Line
	10130 2320 10455 2320
Wire Notes Line
	2675 4425 2675 750 
$Comp
L power:GND #PWR021
U 1 1 5FB4D7F5
P 6845 2865
F 0 "#PWR021" H 6845 2615 50  0001 C CNN
F 1 "GND" H 6850 2692 50  0000 C CNN
F 2 "" H 6845 2865 50  0001 C CNN
F 3 "" H 6845 2865 50  0001 C CNN
	1    6845 2865
	1    0    0    -1  
$EndComp
Wire Wire Line
	10130 2120 10455 2120
Wire Wire Line
	10130 2520 10455 2520
Text Label 10455 2120 2    50   ~ 0
Pin_2
Text Label 10455 2520 2    50   ~ 0
Pin_5
Text Notes 5975 1175 0    50   ~ 0
Pin 2:   OBD_GND        //    CAN_L\nPin 3:   OBD_H          //    CAN_GND\nPin 5:   OBD_L           //    ------ \nPin 7:   -------      //    CAN_H
$Comp
L Device:LED D?
U 1 1 5FB5FD23
P 4050 5675
AR Path="/5F52F099/5FB5FD23" Ref="D?"  Part="1" 
AR Path="/5FA55ABF/5FB5FD23" Ref="D6"  Part="1" 
F 0 "D6" V 4089 5557 50  0000 R CNN
F 1 "RED" V 3998 5557 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4050 5675 50  0001 C CNN
F 3 "~" H 4050 5675 50  0001 C CNN
F 4 "Yes" H 4050 5675 50  0001 C CNN "Vorhanden"
	1    4050 5675
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FB5FD29
P 4050 6150
AR Path="/5F52F099/5FB5FD29" Ref="R?"  Part="1" 
AR Path="/5FA55ABF/5FB5FD29" Ref="R16"  Part="1" 
F 0 "R16" H 4120 6196 50  0000 L CNN
F 1 "500" H 4120 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3980 6150 50  0001 C CNN
F 3 "~" H 4050 6150 50  0001 C CNN
	1    4050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5825 4050 6000
Wire Wire Line
	4050 5525 4050 5200
Text Label 4050 6875 1    50   ~ 0
CAN_Mode
Wire Wire Line
	4050 6300 4050 6875
$Comp
L power:+3.3V #PWR020
U 1 1 5FB62F1D
P 4050 5200
F 0 "#PWR020" H 4050 5050 50  0001 C CNN
F 1 "+3.3V" H 4065 5373 50  0000 C CNN
F 2 "" H 4050 5200 50  0001 C CNN
F 3 "" H 4050 5200 50  0001 C CNN
	1    4050 5200
	1    0    0    -1  
$EndComp
NoConn ~ 1275 4175
NoConn ~ 1275 3875
NoConn ~ 1275 3475
NoConn ~ 1275 3675
$Comp
L Connector:Conn_01x09_Female J?
U 1 1 5FA5ACF8
P 1075 3775
AR Path="/5F562A6B/5FA5ACF8" Ref="J?"  Part="1" 
AR Path="/5FA55ABF/5FA5ACF8" Ref="J3"  Part="1" 
F 0 "J3" H 967 3150 50  0000 C CNN
F 1 "DSUB9" H 967 3241 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 1075 3775 50  0001 C CNN
F 3 "~" H 1075 3775 50  0001 C CNN
F 4 "Yes" H 1075 3775 50  0001 C CNN "Vorhanden"
	1    1075 3775
	-1   0    0    1   
$EndComp
Text Notes 4360 5710 0    50   ~ 0
ON when CAN is Active\nOFF when OBD ist Active
$Comp
L Device:C C11
U 1 1 5FB18345
P 8795 1655
F 0 "C11" H 8680 1701 50  0000 R CNN
F 1 "100n" H 8680 1610 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8833 1505 50  0001 C CNN
F 3 "~" H 8795 1655 50  0001 C CNN
	1    8795 1655
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8725 2925 8725 3650
Wire Wire Line
	9105 3020 9105 3650
Connection ~ 6845 2515
Connection ~ 6845 2815
Wire Wire Line
	6845 2315 6845 2515
Wire Wire Line
	6845 2515 6845 2815
Wire Wire Line
	6845 2815 6845 2865
Text Label 6845 2115 0    50   ~ 0
CAN_Mode
Wire Wire Line
	6845 2115 7345 2115
Wire Wire Line
	7345 2515 6845 2515
Wire Wire Line
	6845 2315 7345 2315
Text Label 7020 3015 0    50   ~ 0
Pin_2
Text Label 7020 2615 0    50   ~ 0
Pin_3
Wire Wire Line
	7345 2615 7020 2615
Wire Wire Line
	7345 3015 7020 3015
Wire Wire Line
	7345 2815 6845 2815
$Comp
L Board:G5V-2-DC5 K1
U 1 1 5FB0FBE9
P 7745 2615
F 0 "K1" V 7841 1985 50  0000 R CNN
F 1 "G5V-2-DC5" V 7750 1985 50  0000 R CNN
F 2 "Board:RELAY_G5V-2-DC5" H 7745 2615 50  0001 L BNN
F 3 "Relay; E-Mech; Low Signal; DPDT; Cur-Rtg 0.5/2AAC/ADC; Ctrl-V 5DC; Vol-Rtg 125/30AC/DC" H 7745 2615 50  0001 L BNN
F 4 "" H 7745 2615 50  0001 L BNN "Field4"
F 5 "QFN-68 Omron" H 7745 2615 50  0001 L BNN "Field5"
F 6 "Unavailable" H 7745 2615 50  0001 L BNN "Field6"
F 7 "None" H 7745 2615 50  0001 L BNN "Field7"
F 8 "G5V-2-DC5" H 7745 2615 50  0001 L BNN "Field8"
	1    7745 2615
	-1   0    0    1   
$EndComp
Wire Wire Line
	8045 3015 8245 3015
Wire Wire Line
	8245 3015 8245 3650
Connection ~ 8725 3650
Wire Wire Line
	8725 3650 9105 3650
Connection ~ 8495 3650
Wire Wire Line
	8495 3650 8725 3650
Wire Wire Line
	8245 3650 8495 3650
Wire Wire Line
	8495 3650 8495 4315
$Comp
L power:GND #PWR031
U 1 1 5FC17D18
P 8795 1880
F 0 "#PWR031" H 8795 1630 50  0001 C CNN
F 1 "GND" H 8800 1707 50  0000 C CNN
F 2 "" H 8795 1880 50  0001 C CNN
F 3 "" H 8795 1880 50  0001 C CNN
	1    8795 1880
	1    0    0    -1  
$EndComp
Wire Wire Line
	8795 1805 8795 1880
Wire Wire Line
	8795 1505 8795 1470
Connection ~ 8530 1470
Wire Wire Line
	8530 1470 8530 1420
Wire Wire Line
	9105 2215 9105 2220
Connection ~ 8725 2215
Wire Wire Line
	8725 2215 9105 2215
Wire Wire Line
	8045 2215 8298 2215
Wire Wire Line
	8530 1470 8530 2215
Connection ~ 8530 2215
Wire Wire Line
	8530 2215 8725 2215
$Comp
L Diode:1N4148 D9
U 1 1 5FBF12D3
P 8297 2773
F 0 "D9" V 8251 2853 50  0000 L CNN
F 1 "1N4148" V 8342 2853 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8297 2598 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8297 2773 50  0001 C CNN
	1    8297 2773
	0    1    1    0   
$EndComp
Wire Wire Line
	8297 2623 8298 2623
Wire Wire Line
	8298 2623 8298 2215
Connection ~ 8298 2215
Wire Wire Line
	8298 2215 8530 2215
Wire Wire Line
	8297 2923 8297 3015
Wire Wire Line
	8297 3015 8245 3015
Connection ~ 8245 3015
$Comp
L Device:C C18
U 1 1 5FBF7A1C
P 9341 1653
F 0 "C18" H 9226 1699 50  0000 R CNN
F 1 "100n" H 9226 1608 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9379 1503 50  0001 C CNN
F 3 "~" H 9341 1653 50  0001 C CNN
	1    9341 1653
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FBF7A22
P 9341 1878
F 0 "#PWR0105" H 9341 1628 50  0001 C CNN
F 1 "GND" H 9346 1705 50  0000 C CNN
F 2 "" H 9341 1878 50  0001 C CNN
F 3 "" H 9341 1878 50  0001 C CNN
	1    9341 1878
	1    0    0    -1  
$EndComp
Wire Wire Line
	9341 1803 9341 1878
Wire Wire Line
	9341 1503 9341 1470
Wire Wire Line
	8530 1470 8795 1470
Connection ~ 8795 1470
Wire Wire Line
	8795 1470 9341 1470
Text HLabel 8530 1420 1    50   Input ~ 0
Relay_Supply
$EndSCHEMATC
