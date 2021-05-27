;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _show_memoria
	.globl _le_adc0
	.globl _contador_func
	.globl _cria_vetor
	.globl _cria_numero
	.globl _print_vetor
	.globl _leitura_eeprom
	.globl _escreve_eeprom
	.globl _Timer4_ISR
	.globl _escreve_byte_dados
	.globl _escreve_byte_controle
	.globl _interrupcao_serial
	.globl _transf_numero
	.globl _escreve_dac0
	.globl _Init_Device
	.globl _Interrupts_Init
	.globl _Oscillator_Init
	.globl _Port_IO_Init
	.globl _Voltage_Reference_Init
	.globl _DAC_Init
	.globl _ADC_Init
	.globl _SMBus_Init
	.globl _UART_Init
	.globl _Timer_Init
	.globl _Reset_Sources_Init
	.globl _printf_fast_f
	.globl _CANTEST
	.globl _CANCCE
	.globl _CANDAR
	.globl _CANIF
	.globl _CANEIE
	.globl _CANSIE
	.globl _CANIE
	.globl _CANINIT
	.globl _SPIEN
	.globl _TXBMT
	.globl _NSSMD0
	.globl _NSSMD1
	.globl _RXOVRN
	.globl _MODF
	.globl _WCOL
	.globl _SPIF
	.globl _AD2WINT
	.globl _AD2CM0
	.globl _AD2CM1
	.globl _AD2CM2
	.globl _AD2BUSY
	.globl _AD2INT
	.globl _AD2TM
	.globl _AD2EN
	.globl _AD0LJST
	.globl _AD0WINT
	.globl _AD0CM0
	.globl _AD0CM1
	.globl _AD0BUSY
	.globl _AD0INT
	.globl _AD0TM
	.globl _AD0EN
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CCF5
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CPRL4
	.globl _CT4
	.globl _TR4
	.globl _EXEN4
	.globl _EXF4
	.globl _TF4
	.globl _CPRL3
	.globl _CT3
	.globl _TR3
	.globl _EXEN3
	.globl _EXF3
	.globl _TF3
	.globl _CPRL2
	.globl _CT2
	.globl _TR2
	.globl _EXEN2
	.globl _EXF2
	.globl _TF2
	.globl _LEC0
	.globl _LEC1
	.globl _LEC2
	.globl _TXOK
	.globl _RXOK
	.globl _EPASS
	.globl _EWARN
	.globl _BOFF
	.globl _SMBTOE
	.globl _SMBFTE
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _ENSMB
	.globl _BUSY
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS0
	.globl _PT2
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _EA
	.globl _RI1
	.globl _TI1
	.globl _RB81
	.globl _TB81
	.globl _REN1
	.globl _MCE1
	.globl _S1MODE
	.globl _RI0
	.globl _TI0
	.globl _RB80
	.globl _TB80
	.globl _REN0
	.globl _SM20
	.globl _SM10
	.globl _SM00
	.globl _CP2HYN0
	.globl _CP2HYN1
	.globl _CP2HYP0
	.globl _CP2HYP1
	.globl _CP2FIF
	.globl _CP2RIF
	.globl _CP2OUT
	.globl _CP2EN
	.globl _CP1HYN0
	.globl _CP1HYN1
	.globl _CP1HYP0
	.globl _CP1HYP1
	.globl _CP1FIF
	.globl _CP1RIF
	.globl _CP1OUT
	.globl _CP1EN
	.globl _CP0HYN0
	.globl _CP0HYN1
	.globl _CP0HYP0
	.globl _CP0HYP1
	.globl _CP0FIF
	.globl _CP0RIF
	.globl _CP0OUT
	.globl _CP0EN
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P7_7
	.globl _P7_6
	.globl _P7_5
	.globl _P7_4
	.globl _P7_3
	.globl _P7_2
	.globl _P7_1
	.globl _P7_0
	.globl _P6_7
	.globl _P6_6
	.globl _P6_5
	.globl _P6_4
	.globl _P6_3
	.globl _P6_2
	.globl _P6_1
	.globl _P6_0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl __XPAGE
	.globl _DP
	.globl _ADC0
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _TMR4
	.globl _TMR3
	.globl _TMR2
	.globl _RCAP4
	.globl _RCAP3
	.globl _RCAP2
	.globl _DAC1
	.globl _DAC0
	.globl _CAN0DAT
	.globl _PCA0CP5
	.globl _PCA0CP4
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _WDTCN
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _P7
	.globl _CAN0CN
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _P6
	.globl _ADC2CN
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _XBR3
	.globl _XBR2
	.globl _XBR1
	.globl _PCA0CPH5
	.globl _XBR0
	.globl _PCA0CPL5
	.globl _ACC
	.globl _PCA0CPM5
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _CAN0TST
	.globl _PCA0CPM1
	.globl _CAN0ADR
	.globl _PCA0CPM0
	.globl _CAN0DATH
	.globl _PCA0MD
	.globl _P5
	.globl _CAN0DATL
	.globl _PCA0CN
	.globl _HVA0CN
	.globl _DAC1CN
	.globl _DAC0CN
	.globl _DAC1H
	.globl _DAC0H
	.globl _DAC1L
	.globl _DAC0L
	.globl _REF0CN
	.globl _PSW
	.globl _SMB0CR
	.globl _TMR4H
	.globl _TMR3H
	.globl _TMR2H
	.globl _TMR4L
	.globl _TMR3L
	.globl _TMR2L
	.globl _RCAP4H
	.globl _RCAP3H
	.globl _RCAP2H
	.globl _RCAP4L
	.globl _RCAP3L
	.globl _RCAP2L
	.globl _TMR4CF
	.globl _TMR3CF
	.globl _TMR2CF
	.globl _P4
	.globl _TMR4CN
	.globl _TMR3CN
	.globl _TMR2CN
	.globl _ADC0LTH
	.globl _ADC2LT
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC2GT
	.globl _ADC0GTL
	.globl _SMB0ADR
	.globl _SMB0DAT
	.globl _SMB0STA
	.globl _CAN0STA
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC2
	.globl _ADC0L
	.globl _ADC2CF
	.globl _ADC0CF
	.globl _AMX2SL
	.globl _AMX0SL
	.globl _AMX0CF
	.globl _AMX0PRT
	.globl _AMX2CF
	.globl _SADEN0
	.globl _IP
	.globl _FLACL
	.globl _FLSCL
	.globl _P3
	.globl _P3MDIN
	.globl _P2MDIN
	.globl _P1MDIN
	.globl _SADDR1
	.globl _SADDR0
	.globl _IE
	.globl _P3MDOUT
	.globl _P2MDOUT
	.globl _P1MDOUT
	.globl _P0MDOUT
	.globl _EMI0CF
	.globl _EMI0CN
	.globl _EMI0TC
	.globl _P2
	.globl _P7MDOUT
	.globl _P6MDOUT
	.globl _P5MDOUT
	.globl _SPI0CKR
	.globl _P4MDOUT
	.globl _SPI0DAT
	.globl _SPI0CFG
	.globl _SBUF1
	.globl _SBUF0
	.globl _SCON1
	.globl _SCON0
	.globl _CLKSEL
	.globl _SFRPGCN
	.globl _SSTA0
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _OSCXCN
	.globl _TH0
	.globl _OSCICL
	.globl _TL1
	.globl _OSCICN
	.globl _TL0
	.globl _CPT2MD
	.globl _CPT1MD
	.globl _CPT0MD
	.globl _TMOD
	.globl _CPT2CN
	.globl _CPT1CN
	.globl _CPT0CN
	.globl _TCON
	.globl _PCON
	.globl _SFRLAST
	.globl _SFRNEXT
	.globl _SFRPAGE
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _escreve_byte_controle_PARM_2
	.globl _flag2
	.globl _flag1
	.globl _fbr
	.globl _escreve_eeprom_PARM_2
	.globl _j
	.globl _i
	.globl _tamanho
	.globl _x
	.globl _ponteiro
	.globl _posicao
	.globl _vetor
	.globl _contador
	.globl _m_segundos
	.globl _segundos
	.globl _intervalo
	.globl _temp_dac
	.globl _temp
	.globl _input_numerico
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$SFRPAGE$0$0 == 0x0084
_SFRPAGE	=	0x0084
G$SFRNEXT$0$0 == 0x0085
_SFRNEXT	=	0x0085
G$SFRLAST$0$0 == 0x0086
_SFRLAST	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$CPT0CN$0$0 == 0x0088
_CPT0CN	=	0x0088
G$CPT1CN$0$0 == 0x0088
_CPT1CN	=	0x0088
G$CPT2CN$0$0 == 0x0088
_CPT2CN	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$CPT0MD$0$0 == 0x0089
_CPT0MD	=	0x0089
G$CPT1MD$0$0 == 0x0089
_CPT1MD	=	0x0089
G$CPT2MD$0$0 == 0x0089
_CPT2MD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$OSCICN$0$0 == 0x008a
_OSCICN	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$OSCICL$0$0 == 0x008b
_OSCICL	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$OSCXCN$0$0 == 0x008c
_OSCXCN	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SSTA0$0$0 == 0x0091
_SSTA0	=	0x0091
G$SFRPGCN$0$0 == 0x0096
_SFRPGCN	=	0x0096
G$CLKSEL$0$0 == 0x0097
_CLKSEL	=	0x0097
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SCON1$0$0 == 0x0098
_SCON1	=	0x0098
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SBUF1$0$0 == 0x0099
_SBUF1	=	0x0099
G$SPI0CFG$0$0 == 0x009a
_SPI0CFG	=	0x009a
G$SPI0DAT$0$0 == 0x009b
_SPI0DAT	=	0x009b
G$P4MDOUT$0$0 == 0x009c
_P4MDOUT	=	0x009c
G$SPI0CKR$0$0 == 0x009d
_SPI0CKR	=	0x009d
G$P5MDOUT$0$0 == 0x009d
_P5MDOUT	=	0x009d
G$P6MDOUT$0$0 == 0x009e
_P6MDOUT	=	0x009e
G$P7MDOUT$0$0 == 0x009f
_P7MDOUT	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$EMI0TC$0$0 == 0x00a1
_EMI0TC	=	0x00a1
G$EMI0CN$0$0 == 0x00a2
_EMI0CN	=	0x00a2
G$EMI0CF$0$0 == 0x00a3
_EMI0CF	=	0x00a3
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR0$0$0 == 0x00a9
_SADDR0	=	0x00a9
G$SADDR1$0$0 == 0x00a9
_SADDR1	=	0x00a9
G$P1MDIN$0$0 == 0x00ad
_P1MDIN	=	0x00ad
G$P2MDIN$0$0 == 0x00ae
_P2MDIN	=	0x00ae
G$P3MDIN$0$0 == 0x00af
_P3MDIN	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$FLSCL$0$0 == 0x00b7
_FLSCL	=	0x00b7
G$FLACL$0$0 == 0x00b7
_FLACL	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN0$0$0 == 0x00b9
_SADEN0	=	0x00b9
G$AMX2CF$0$0 == 0x00ba
_AMX2CF	=	0x00ba
G$AMX0PRT$0$0 == 0x00bd
_AMX0PRT	=	0x00bd
G$AMX0CF$0$0 == 0x00ba
_AMX0CF	=	0x00ba
G$AMX0SL$0$0 == 0x00bb
_AMX0SL	=	0x00bb
G$AMX2SL$0$0 == 0x00bb
_AMX2SL	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC2CF$0$0 == 0x00bc
_ADC2CF	=	0x00bc
G$ADC0L$0$0 == 0x00be
_ADC0L	=	0x00be
G$ADC2$0$0 == 0x00be
_ADC2	=	0x00be
G$ADC0H$0$0 == 0x00bf
_ADC0H	=	0x00bf
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$CAN0STA$0$0 == 0x00c0
_CAN0STA	=	0x00c0
G$SMB0STA$0$0 == 0x00c1
_SMB0STA	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$SMB0ADR$0$0 == 0x00c3
_SMB0ADR	=	0x00c3
G$ADC0GTL$0$0 == 0x00c4
_ADC0GTL	=	0x00c4
G$ADC2GT$0$0 == 0x00c4
_ADC2GT	=	0x00c4
G$ADC0GTH$0$0 == 0x00c5
_ADC0GTH	=	0x00c5
G$ADC0LTL$0$0 == 0x00c6
_ADC0LTL	=	0x00c6
G$ADC2LT$0$0 == 0x00c6
_ADC2LT	=	0x00c6
G$ADC0LTH$0$0 == 0x00c7
_ADC0LTH	=	0x00c7
G$TMR2CN$0$0 == 0x00c8
_TMR2CN	=	0x00c8
G$TMR3CN$0$0 == 0x00c8
_TMR3CN	=	0x00c8
G$TMR4CN$0$0 == 0x00c8
_TMR4CN	=	0x00c8
G$P4$0$0 == 0x00c8
_P4	=	0x00c8
G$TMR2CF$0$0 == 0x00c9
_TMR2CF	=	0x00c9
G$TMR3CF$0$0 == 0x00c9
_TMR3CF	=	0x00c9
G$TMR4CF$0$0 == 0x00c9
_TMR4CF	=	0x00c9
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP3L$0$0 == 0x00ca
_RCAP3L	=	0x00ca
G$RCAP4L$0$0 == 0x00ca
_RCAP4L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$RCAP3H$0$0 == 0x00cb
_RCAP3H	=	0x00cb
G$RCAP4H$0$0 == 0x00cb
_RCAP4H	=	0x00cb
G$TMR2L$0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TMR3L$0$0 == 0x00cc
_TMR3L	=	0x00cc
G$TMR4L$0$0 == 0x00cc
_TMR4L	=	0x00cc
G$TMR2H$0$0 == 0x00cd
_TMR2H	=	0x00cd
G$TMR3H$0$0 == 0x00cd
_TMR3H	=	0x00cd
G$TMR4H$0$0 == 0x00cd
_TMR4H	=	0x00cd
G$SMB0CR$0$0 == 0x00cf
_SMB0CR	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$DAC0L$0$0 == 0x00d2
_DAC0L	=	0x00d2
G$DAC1L$0$0 == 0x00d2
_DAC1L	=	0x00d2
G$DAC0H$0$0 == 0x00d3
_DAC0H	=	0x00d3
G$DAC1H$0$0 == 0x00d3
_DAC1H	=	0x00d3
G$DAC0CN$0$0 == 0x00d4
_DAC0CN	=	0x00d4
G$DAC1CN$0$0 == 0x00d4
_DAC1CN	=	0x00d4
G$HVA0CN$0$0 == 0x00d6
_HVA0CN	=	0x00d6
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$CAN0DATL$0$0 == 0x00d8
_CAN0DATL	=	0x00d8
G$P5$0$0 == 0x00d8
_P5	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$CAN0DATH$0$0 == 0x00d9
_CAN0DATH	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$CAN0ADR$0$0 == 0x00da
_CAN0ADR	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$CAN0TST$0$0 == 0x00db
_CAN0TST	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$PCA0CPM5$0$0 == 0x00df
_PCA0CPM5	=	0x00df
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$PCA0CPL5$0$0 == 0x00e1
_PCA0CPL5	=	0x00e1
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$PCA0CPH5$0$0 == 0x00e2
_PCA0CPH5	=	0x00e2
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$XBR3$0$0 == 0x00e4
_XBR3	=	0x00e4
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$ADC2CN$0$0 == 0x00e8
_ADC2CN	=	0x00e8
G$P6$0$0 == 0x00e8
_P6	=	0x00e8
G$PCA0CPL2$0$0 == 0x00e9
_PCA0CPL2	=	0x00e9
G$PCA0CPH2$0$0 == 0x00ea
_PCA0CPH2	=	0x00ea
G$PCA0CPL3$0$0 == 0x00eb
_PCA0CPL3	=	0x00eb
G$PCA0CPH3$0$0 == 0x00ec
_PCA0CPH3	=	0x00ec
G$PCA0CPL4$0$0 == 0x00ed
_PCA0CPL4	=	0x00ed
G$PCA0CPH4$0$0 == 0x00ee
_PCA0CPH4	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$CAN0CN$0$0 == 0x00f8
_CAN0CN	=	0x00f8
G$P7$0$0 == 0x00f8
_P7	=	0x00f8
G$PCA0L$0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA0H$0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA0CPL0$0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA0CPH0$0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$PCA0CPL1$0$0 == 0x00fd
_PCA0CPL1	=	0x00fd
G$PCA0CPH1$0$0 == 0x00fe
_PCA0CPH1	=	0x00fe
G$WDTCN$0$0 == 0x00ff
_WDTCN	=	0x00ff
G$PCA0$0$0 == 0xfaf9
_PCA0	=	0xfaf9
G$PCA0CP0$0$0 == 0xfcfb
_PCA0CP0	=	0xfcfb
G$PCA0CP1$0$0 == 0xfefd
_PCA0CP1	=	0xfefd
G$PCA0CP2$0$0 == 0xeae9
_PCA0CP2	=	0xeae9
G$PCA0CP3$0$0 == 0xeceb
_PCA0CP3	=	0xeceb
G$PCA0CP4$0$0 == 0xeeed
_PCA0CP4	=	0xeeed
G$PCA0CP5$0$0 == 0xe2e1
_PCA0CP5	=	0xe2e1
G$CAN0DAT$0$0 == 0xd9d8
_CAN0DAT	=	0xd9d8
G$DAC0$0$0 == 0xd3d2
_DAC0	=	0xd3d2
G$DAC1$0$0 == 0xd3d2
_DAC1	=	0xd3d2
G$RCAP2$0$0 == 0xcbca
_RCAP2	=	0xcbca
G$RCAP3$0$0 == 0xcbca
_RCAP3	=	0xcbca
G$RCAP4$0$0 == 0xcbca
_RCAP4	=	0xcbca
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$TMR3$0$0 == 0xcdcc
_TMR3	=	0xcdcc
G$TMR4$0$0 == 0xcdcc
_TMR4	=	0xcdcc
G$ADC0GT$0$0 == 0xc5c4
_ADC0GT	=	0xc5c4
G$ADC0LT$0$0 == 0xc7c6
_ADC0LT	=	0xc7c6
G$ADC0$0$0 == 0xbfbe
_ADC0	=	0xbfbe
G$DP$0$0 == 0x8382
_DP	=	0x8382
G$_XPAGE$0$0 == 0x00a2
__XPAGE	=	0x00a2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$P4_0$0$0 == 0x00c8
_P4_0	=	0x00c8
G$P4_1$0$0 == 0x00c9
_P4_1	=	0x00c9
G$P4_2$0$0 == 0x00ca
_P4_2	=	0x00ca
G$P4_3$0$0 == 0x00cb
_P4_3	=	0x00cb
G$P4_4$0$0 == 0x00cc
_P4_4	=	0x00cc
G$P4_5$0$0 == 0x00cd
_P4_5	=	0x00cd
G$P4_6$0$0 == 0x00ce
_P4_6	=	0x00ce
G$P4_7$0$0 == 0x00cf
_P4_7	=	0x00cf
G$P5_0$0$0 == 0x00d8
_P5_0	=	0x00d8
G$P5_1$0$0 == 0x00d9
_P5_1	=	0x00d9
G$P5_2$0$0 == 0x00da
_P5_2	=	0x00da
G$P5_3$0$0 == 0x00db
_P5_3	=	0x00db
G$P5_4$0$0 == 0x00dc
_P5_4	=	0x00dc
G$P5_5$0$0 == 0x00dd
_P5_5	=	0x00dd
G$P5_6$0$0 == 0x00de
_P5_6	=	0x00de
G$P5_7$0$0 == 0x00df
_P5_7	=	0x00df
G$P6_0$0$0 == 0x00e8
_P6_0	=	0x00e8
G$P6_1$0$0 == 0x00e9
_P6_1	=	0x00e9
G$P6_2$0$0 == 0x00ea
_P6_2	=	0x00ea
G$P6_3$0$0 == 0x00eb
_P6_3	=	0x00eb
G$P6_4$0$0 == 0x00ec
_P6_4	=	0x00ec
G$P6_5$0$0 == 0x00ed
_P6_5	=	0x00ed
G$P6_6$0$0 == 0x00ee
_P6_6	=	0x00ee
G$P6_7$0$0 == 0x00ef
_P6_7	=	0x00ef
G$P7_0$0$0 == 0x00f8
_P7_0	=	0x00f8
G$P7_1$0$0 == 0x00f9
_P7_1	=	0x00f9
G$P7_2$0$0 == 0x00fa
_P7_2	=	0x00fa
G$P7_3$0$0 == 0x00fb
_P7_3	=	0x00fb
G$P7_4$0$0 == 0x00fc
_P7_4	=	0x00fc
G$P7_5$0$0 == 0x00fd
_P7_5	=	0x00fd
G$P7_6$0$0 == 0x00fe
_P7_6	=	0x00fe
G$P7_7$0$0 == 0x00ff
_P7_7	=	0x00ff
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$CP0EN$0$0 == 0x008f
_CP0EN	=	0x008f
G$CP0OUT$0$0 == 0x008e
_CP0OUT	=	0x008e
G$CP0RIF$0$0 == 0x008d
_CP0RIF	=	0x008d
G$CP0FIF$0$0 == 0x008c
_CP0FIF	=	0x008c
G$CP0HYP1$0$0 == 0x008b
_CP0HYP1	=	0x008b
G$CP0HYP0$0$0 == 0x008a
_CP0HYP0	=	0x008a
G$CP0HYN1$0$0 == 0x0089
_CP0HYN1	=	0x0089
G$CP0HYN0$0$0 == 0x0088
_CP0HYN0	=	0x0088
G$CP1EN$0$0 == 0x008f
_CP1EN	=	0x008f
G$CP1OUT$0$0 == 0x008e
_CP1OUT	=	0x008e
G$CP1RIF$0$0 == 0x008d
_CP1RIF	=	0x008d
G$CP1FIF$0$0 == 0x008c
_CP1FIF	=	0x008c
G$CP1HYP1$0$0 == 0x008b
_CP1HYP1	=	0x008b
G$CP1HYP0$0$0 == 0x008a
_CP1HYP0	=	0x008a
G$CP1HYN1$0$0 == 0x0089
_CP1HYN1	=	0x0089
G$CP1HYN0$0$0 == 0x0088
_CP1HYN0	=	0x0088
G$CP2EN$0$0 == 0x008f
_CP2EN	=	0x008f
G$CP2OUT$0$0 == 0x008e
_CP2OUT	=	0x008e
G$CP2RIF$0$0 == 0x008d
_CP2RIF	=	0x008d
G$CP2FIF$0$0 == 0x008c
_CP2FIF	=	0x008c
G$CP2HYP1$0$0 == 0x008b
_CP2HYP1	=	0x008b
G$CP2HYP0$0$0 == 0x008a
_CP2HYP0	=	0x008a
G$CP2HYN1$0$0 == 0x0089
_CP2HYN1	=	0x0089
G$CP2HYN0$0$0 == 0x0088
_CP2HYN0	=	0x0088
G$SM00$0$0 == 0x009f
_SM00	=	0x009f
G$SM10$0$0 == 0x009e
_SM10	=	0x009e
G$SM20$0$0 == 0x009d
_SM20	=	0x009d
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$S1MODE$0$0 == 0x009f
_S1MODE	=	0x009f
G$MCE1$0$0 == 0x009d
_MCE1	=	0x009d
G$REN1$0$0 == 0x009c
_REN1	=	0x009c
G$TB81$0$0 == 0x009b
_TB81	=	0x009b
G$RB81$0$0 == 0x009a
_RB81	=	0x009a
G$TI1$0$0 == 0x0099
_TI1	=	0x0099
G$RI1$0$0 == 0x0098
_RI1	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$BUSY$0$0 == 0x00c7
_BUSY	=	0x00c7
G$ENSMB$0$0 == 0x00c6
_ENSMB	=	0x00c6
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$SI$0$0 == 0x00c3
_SI	=	0x00c3
G$AA$0$0 == 0x00c2
_AA	=	0x00c2
G$SMBFTE$0$0 == 0x00c1
_SMBFTE	=	0x00c1
G$SMBTOE$0$0 == 0x00c0
_SMBTOE	=	0x00c0
G$BOFF$0$0 == 0x00c7
_BOFF	=	0x00c7
G$EWARN$0$0 == 0x00c6
_EWARN	=	0x00c6
G$EPASS$0$0 == 0x00c5
_EPASS	=	0x00c5
G$RXOK$0$0 == 0x00c4
_RXOK	=	0x00c4
G$TXOK$0$0 == 0x00c3
_TXOK	=	0x00c3
G$LEC2$0$0 == 0x00c2
_LEC2	=	0x00c2
G$LEC1$0$0 == 0x00c1
_LEC1	=	0x00c1
G$LEC0$0$0 == 0x00c0
_LEC0	=	0x00c0
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$CT2$0$0 == 0x00c9
_CT2	=	0x00c9
G$CPRL2$0$0 == 0x00c8
_CPRL2	=	0x00c8
G$TF3$0$0 == 0x00cf
_TF3	=	0x00cf
G$EXF3$0$0 == 0x00ce
_EXF3	=	0x00ce
G$EXEN3$0$0 == 0x00cb
_EXEN3	=	0x00cb
G$TR3$0$0 == 0x00ca
_TR3	=	0x00ca
G$CT3$0$0 == 0x00c9
_CT3	=	0x00c9
G$CPRL3$0$0 == 0x00c8
_CPRL3	=	0x00c8
G$TF4$0$0 == 0x00cf
_TF4	=	0x00cf
G$EXF4$0$0 == 0x00ce
_EXF4	=	0x00ce
G$EXEN4$0$0 == 0x00cb
_EXEN4	=	0x00cb
G$TR4$0$0 == 0x00ca
_TR4	=	0x00ca
G$CT4$0$0 == 0x00c9
_CT4	=	0x00c9
G$CPRL4$0$0 == 0x00c8
_CPRL4	=	0x00c8
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF5$0$0 == 0x00dd
_CCF5	=	0x00dd
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$AD0CM1$0$0 == 0x00eb
_AD0CM1	=	0x00eb
G$AD0CM0$0$0 == 0x00ea
_AD0CM0	=	0x00ea
G$AD0WINT$0$0 == 0x00e9
_AD0WINT	=	0x00e9
G$AD0LJST$0$0 == 0x00e8
_AD0LJST	=	0x00e8
G$AD2EN$0$0 == 0x00ef
_AD2EN	=	0x00ef
G$AD2TM$0$0 == 0x00ee
_AD2TM	=	0x00ee
G$AD2INT$0$0 == 0x00ed
_AD2INT	=	0x00ed
G$AD2BUSY$0$0 == 0x00ec
_AD2BUSY	=	0x00ec
G$AD2CM2$0$0 == 0x00eb
_AD2CM2	=	0x00eb
G$AD2CM1$0$0 == 0x00ea
_AD2CM1	=	0x00ea
G$AD2CM0$0$0 == 0x00e9
_AD2CM0	=	0x00e9
G$AD2WINT$0$0 == 0x00e8
_AD2WINT	=	0x00e8
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$NSSMD1$0$0 == 0x00fb
_NSSMD1	=	0x00fb
G$NSSMD0$0$0 == 0x00fa
_NSSMD0	=	0x00fa
G$TXBMT$0$0 == 0x00f9
_TXBMT	=	0x00f9
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$CANINIT$0$0 == 0x00f8
_CANINIT	=	0x00f8
G$CANIE$0$0 == 0x00f9
_CANIE	=	0x00f9
G$CANSIE$0$0 == 0x00fa
_CANSIE	=	0x00fa
G$CANEIE$0$0 == 0x00fb
_CANEIE	=	0x00fb
G$CANIF$0$0 == 0x00fc
_CANIF	=	0x00fc
G$CANDAR$0$0 == 0x00fd
_CANDAR	=	0x00fd
G$CANCCE$0$0 == 0x00fe
_CANCCE	=	0x00fe
G$CANTEST$0$0 == 0x00ff
_CANTEST	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$input_numerico$0$0==.
_input_numerico::
	.ds 4
G$temp$0$0==.
_temp::
	.ds 4
G$temp_dac$0$0==.
_temp_dac::
	.ds 4
G$intervalo$0$0==.
_intervalo::
	.ds 2
G$segundos$0$0==.
_segundos::
	.ds 2
G$m_segundos$0$0==.
_m_segundos::
	.ds 2
G$contador$0$0==.
_contador::
	.ds 2
G$vetor$0$0==.
_vetor::
	.ds 6
G$posicao$0$0==.
_posicao::
	.ds 1
G$ponteiro$0$0==.
_ponteiro::
	.ds 1
G$x$0$0==.
_x::
	.ds 1
G$tamanho$0$0==.
_tamanho::
	.ds 1
G$i$0$0==.
_i::
	.ds 2
G$j$0$0==.
_j::
	.ds 1
Lmain.escreve_eeprom$dados$1$52==.
_escreve_eeprom_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
G$fbr$0$0==.
_fbr::
	.ds 1
G$flag1$0$0==.
_flag1::
	.ds 1
G$flag2$0$0==.
_flag2::
	.ds 1
Lmain.escreve_byte_controle$RW$1$38==.
_escreve_byte_controle_PARM_2:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_interrupcao_serial
	.ds	5
	ljmp	_contador_func
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_Timer4_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$main.c$24$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:24: float input_numerico = 0; //variavel da temperatura e intervalo
	clr	a
	mov	_input_numerico,a
	mov	(_input_numerico + 1),a
	mov	(_input_numerico + 2),a
	mov	(_input_numerico + 3),a
	C$main.c$25$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:25: float temp = 0;
	mov	_temp,a
	mov	(_temp + 1),a
	mov	(_temp + 2),a
	mov	(_temp + 3),a
	C$main.c$26$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:26: float temp_dac = 0;
	mov	_temp_dac,a
	mov	(_temp_dac + 1),a
	mov	(_temp_dac + 2),a
	mov	(_temp_dac + 3),a
	C$main.c$28$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:28: unsigned int intervalo = 1;
	mov	_intervalo,#0x01
;	1-genFromRTrack replaced	mov	(_intervalo + 1),#0x00
	mov	(_intervalo + 1),a
	C$main.c$29$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:29: unsigned int segundos = 0;
	mov	_segundos,a
	mov	(_segundos + 1),a
	C$main.c$30$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:30: unsigned int m_segundos = 0;
	mov	_m_segundos,a
	mov	(_m_segundos + 1),a
	C$main.c$31$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:31: unsigned int contador =0;
	mov	_contador,a
	mov	(_contador + 1),a
	C$main.c$34$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:34: unsigned char posicao = 1; //posicao na memoria
	mov	_posicao,#0x01
	C$main.c$36$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:36: unsigned char x = 0;
;	1-genFromRTrack replaced	mov	_x,#0x00
	mov	_x,a
	C$main.c$37$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:37: unsigned char tamanho = 0;
;	1-genFromRTrack replaced	mov	_tamanho,#0x00
	mov	_tamanho,a
	C$main.c$38$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:38: unsigned int i = 0;
	mov	_i,a
	mov	(_i + 1),a
	C$main.c$39$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:39: unsigned char j = 0;
;	1-genFromRTrack replaced	mov	_j,#0x00
	mov	_j,a
	C$main.c$19$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:19: volatile __bit fbr = 0;
	clr	_fbr
	C$main.c$20$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:20: volatile __bit flag1 = 0; // temp ou intervalo
	clr	_flag1
	C$main.c$21$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:21: volatile __bit flag2 = 0; // input com numero
	clr	_flag2
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Reset_Sources_Init'
;------------------------------------------------------------
	G$Reset_Sources_Init$0$0 ==.
	C$config.c$10$0$0 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:10: void Reset_Sources_Init()
;	-----------------------------------------
;	 function Reset_Sources_Init
;	-----------------------------------------
_Reset_Sources_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$config.c$12$1$14 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:12: WDTCN     = 0xDE;
	mov	_WDTCN,#0xde
	C$config.c$13$1$14 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:13: WDTCN     = 0xAD;
	mov	_WDTCN,#0xad
	C$config.c$14$1$14 ==.
	XG$Reset_Sources_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$config.c$16$1$14 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:16: void Timer_Init()
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$config.c$18$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:18: SFRPAGE   = TIMER01_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$19$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:19: TCON      = 0x40;
	mov	_TCON,#0x40
	C$config.c$20$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:20: TMOD      = 0x21;
	mov	_TMOD,#0x21
	C$config.c$21$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:21: CKCON     = 0x18;
	mov	_CKCON,#0x18
	C$config.c$22$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:22: TH1       = 0xAF;
	mov	_TH1,#0xaf
	C$config.c$23$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:23: SFRPAGE   = TMR2_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$24$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:24: TMR2CF    = 0x0A;
	mov	_TMR2CF,#0x0a
	C$config.c$25$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:25: RCAP2L    = 0xDC;
	mov	_RCAP2L,#0xdc
	C$config.c$26$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:26: RCAP2H    = 0x0B;
	mov	_RCAP2H,#0x0b
	C$config.c$27$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:27: TMR2L     = 0xDC;
	mov	_TMR2L,#0xdc
	C$config.c$28$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:28: TMR2H     = 0x0B;
	mov	_TMR2H,#0x0b
	C$config.c$29$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:29: SFRPAGE   = TMR4_PAGE;
	mov	_SFRPAGE,#0x02
	C$config.c$30$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:30: TMR4CN    = 0x04;
	mov	_TMR4CN,#0x04
	C$config.c$31$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:31: TMR4CF    = 0x02;
	mov	_TMR4CF,#0x02
	C$config.c$32$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:32: RCAP4L    = 0x8D;
	mov	_RCAP4L,#0x8d
	C$config.c$33$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:33: RCAP4H    = 0x34;
	mov	_RCAP4H,#0x34
	C$config.c$34$1$15 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
	G$UART_Init$0$0 ==.
	C$config.c$36$1$15 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:36: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
	C$config.c$38$1$16 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:38: SFRPAGE   = UART0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$39$1$16 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:39: SCON0     = 0x70;
	mov	_SCON0,#0x70
	C$config.c$40$1$16 ==.
	XG$UART_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SMBus_Init'
;------------------------------------------------------------
	G$SMBus_Init$0$0 ==.
	C$config.c$42$1$16 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:42: void SMBus_Init()
;	-----------------------------------------
;	 function SMBus_Init
;	-----------------------------------------
_SMBus_Init:
	C$config.c$44$1$17 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:44: SFRPAGE   = SMB0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$45$1$17 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:45: SMB0CN    = 0x41;
	mov	_SMB0CN,#0x41
	C$config.c$46$1$17 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:46: SMB0CR    = 0xE9;
	mov	_SMB0CR,#0xe9
	C$config.c$47$1$17 ==.
	XG$SMBus_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$config.c$49$1$17 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:49: void ADC_Init()
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$config.c$51$1$18 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:51: SFRPAGE   = ADC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$52$1$18 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:52: ADC0CN    = 0x80;
	mov	_ADC0CN,#0x80
	C$config.c$53$1$18 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAC_Init'
;------------------------------------------------------------
	G$DAC_Init$0$0 ==.
	C$config.c$55$1$18 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:55: void DAC_Init()
;	-----------------------------------------
;	 function DAC_Init
;	-----------------------------------------
_DAC_Init:
	C$config.c$57$1$19 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:57: SFRPAGE   = DAC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$58$1$19 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:58: DAC0CN    = 0x80;
	mov	_DAC0CN,#0x80
	C$config.c$59$1$19 ==.
	XG$DAC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Voltage_Reference_Init'
;------------------------------------------------------------
	G$Voltage_Reference_Init$0$0 ==.
	C$config.c$61$1$19 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:61: void Voltage_Reference_Init()
;	-----------------------------------------
;	 function Voltage_Reference_Init
;	-----------------------------------------
_Voltage_Reference_Init:
	C$config.c$63$1$20 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:63: SFRPAGE   = ADC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$64$1$20 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:64: REF0CN    = 0x03;
	mov	_REF0CN,#0x03
	C$config.c$65$1$20 ==.
	XG$Voltage_Reference_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_IO_Init'
;------------------------------------------------------------
	G$Port_IO_Init$0$0 ==.
	C$config.c$67$1$20 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:67: void Port_IO_Init()
;	-----------------------------------------
;	 function Port_IO_Init
;	-----------------------------------------
_Port_IO_Init:
	C$config.c$105$1$21 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:105: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$config.c$106$1$21 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:106: P0MDOUT   = 0x01;
	mov	_P0MDOUT,#0x01
	C$config.c$107$1$21 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:107: XBR0      = 0x07;
	mov	_XBR0,#0x07
	C$config.c$108$1$21 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:108: XBR2      = 0x40;
	mov	_XBR2,#0x40
	C$config.c$109$1$21 ==.
	XG$Port_IO_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Oscillator_Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Oscillator_Init$0$0 ==.
	C$config.c$111$1$21 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:111: void Oscillator_Init()
;	-----------------------------------------
;	 function Oscillator_Init
;	-----------------------------------------
_Oscillator_Init:
	C$config.c$114$1$22 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:114: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$config.c$115$1$22 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:115: OSCXCN    = 0x67;
	mov	_OSCXCN,#0x67
	C$config.c$116$1$22 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:116: for (i = 0; i < 3000; i++);  // Wait 1ms for initialization
	mov	r6,#0xb8
	mov	r7,#0x0b
00107$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00107$
	C$config.c$117$1$22 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:117: while ((OSCXCN & 0x80) == 0);
00102$:
	mov	a,_OSCXCN
	jnb	acc.7,00102$
	C$config.c$118$1$22 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:118: CLKSEL    = 0x01;
	mov	_CLKSEL,#0x01
	C$config.c$119$1$22 ==.
	XG$Oscillator_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupts_Init'
;------------------------------------------------------------
	G$Interrupts_Init$0$0 ==.
	C$config.c$121$1$22 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:121: void Interrupts_Init()
;	-----------------------------------------
;	 function Interrupts_Init
;	-----------------------------------------
_Interrupts_Init:
	C$config.c$123$1$23 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:123: IE        = 0xB0;
	mov	_IE,#0xb0
	C$config.c$124$1$23 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:124: EIE2      = 0x04;
	mov	_EIE2,#0x04
	C$config.c$125$1$23 ==.
	XG$Interrupts_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_Device'
;------------------------------------------------------------
	G$Init_Device$0$0 ==.
	C$config.c$129$1$23 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:129: void Init_Device(void)
;	-----------------------------------------
;	 function Init_Device
;	-----------------------------------------
_Init_Device:
	C$config.c$131$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:131: Reset_Sources_Init();
	lcall	_Reset_Sources_Init
	C$config.c$132$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:132: Timer_Init();
	lcall	_Timer_Init
	C$config.c$133$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:133: UART_Init();
	lcall	_UART_Init
	C$config.c$134$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:134: SMBus_Init();
	lcall	_SMBus_Init
	C$config.c$135$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:135: ADC_Init();
	lcall	_ADC_Init
	C$config.c$136$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:136: DAC_Init();
	lcall	_DAC_Init
	C$config.c$137$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:137: Voltage_Reference_Init();
	lcall	_Voltage_Reference_Init
	C$config.c$138$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:138: Port_IO_Init();
	lcall	_Port_IO_Init
	C$config.c$139$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:139: Oscillator_Init();
	lcall	_Oscillator_Init
	C$config.c$140$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\/config.c:140: Interrupts_Init();
	lcall	_Interrupts_Init
	C$config.c$141$1$25 ==.
	XG$Init_Device$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'escreve_dac0'
;------------------------------------------------------------
;temp                      Allocated to registers r4 r5 r6 r7 
;dac                       Allocated to registers r6 r7 
;------------------------------------------------------------
	G$escreve_dac0$0$0 ==.
	C$main.c$41$1$25 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:41: void escreve_dac0(float temp){
;	-----------------------------------------
;	 function escreve_dac0
;	-----------------------------------------
_escreve_dac0:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$main.c$43$1$27 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:43: dac = temp*16.0;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x41
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	r6,dpl
	mov	r7,dph
	C$main.c$44$1$27 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:44: DAC0L = dac;
	mov	_DAC0L,r6
	C$main.c$45$1$27 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:45: DAC0H = dac >> 8;
	mov	_DAC0H,r7
	C$main.c$46$1$27 ==.
	XG$escreve_dac0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transf_numero'
;------------------------------------------------------------
;input                     Allocated to registers r7 
;------------------------------------------------------------
	G$transf_numero$0$0 ==.
	C$main.c$48$1$27 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:48: unsigned char transf_numero(unsigned char input){
;	-----------------------------------------
;	 function transf_numero
;	-----------------------------------------
_transf_numero:
	mov	r7,dpl
	C$main.c$49$1$29 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:49: switch(input){
	cjne	r7,#0x30,00121$
00121$:
	jnc	00122$
	ljmp	00111$
00122$:
	mov	a,r7
	add	a,#0xff - 0x39
	jnc	00123$
	ljmp	00111$
00123$:
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	add	a,#(00124$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00125$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00124$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
00125$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	C$main.c$50$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:50: case '0':		
00101$:
	C$main.c$51$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:51: return 0;
	mov	dpl,#0x00
	C$main.c$52$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:52: case '1':
	sjmp	00113$
00102$:
	C$main.c$53$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:53: return 1;		
	mov	dpl,#0x01
	C$main.c$54$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:54: case '2':
	sjmp	00113$
00103$:
	C$main.c$55$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:55: return 2;
	mov	dpl,#0x02
	C$main.c$56$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:56: case'3': 
	sjmp	00113$
00104$:
	C$main.c$57$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:57: return 3;
	mov	dpl,#0x03
	C$main.c$58$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:58: case '4':
	sjmp	00113$
00105$:
	C$main.c$59$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:59: return 4;
	mov	dpl,#0x04
	C$main.c$60$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:60: case '5':
	sjmp	00113$
00106$:
	C$main.c$61$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:61: return 5;
	mov	dpl,#0x05
	C$main.c$62$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:62: case '6':
	sjmp	00113$
00107$:
	C$main.c$63$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:63: return 6;
	mov	dpl,#0x06
	C$main.c$64$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:64: case '7':
	sjmp	00113$
00108$:
	C$main.c$65$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:65: return 7;
	mov	dpl,#0x07
	C$main.c$66$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:66: case '8':
	sjmp	00113$
00109$:
	C$main.c$67$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:67: return 8;
	mov	dpl,#0x08
	C$main.c$68$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:68: case '9':
	sjmp	00113$
00110$:
	C$main.c$69$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:69: return 9;
	mov	dpl,#0x09
	C$main.c$70$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:70: default:
	sjmp	00113$
00111$:
	C$main.c$71$2$30 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:71: return 100;
	mov	dpl,#0x64
	C$main.c$72$1$29 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:72: }
00113$:
	C$main.c$73$1$29 ==.
	XG$transf_numero$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupcao_serial'
;------------------------------------------------------------
	G$interrupcao_serial$0$0 ==.
	C$main.c$76$1$29 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:76: void interrupcao_serial(void) __interrupt 4{
;	-----------------------------------------
;	 function interrupcao_serial
;	-----------------------------------------
_interrupcao_serial:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$main.c$77$1$32 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:77: if(RI0 == 1){
	jnb	_RI0,00113$
	C$main.c$78$2$33 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:78: fbr = 1;
	setb	_fbr
	C$main.c$79$2$33 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:79: RI0 = 0;
	clr	_RI0
	C$main.c$80$2$33 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:80: if(flag2 || flag1){	// intervalo
	jb	_flag2,00108$
	jnb	_flag1,00113$
00108$:
	C$main.c$81$3$34 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:81: if(SBUF0 == 46){ // ponto digitado
	mov	a,#0x2e
	cjne	a,_SBUF0,00102$
	C$main.c$82$4$35 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:82: flag1 = 1;	
	setb	_flag1
00102$:
	C$main.c$84$3$34 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:84: if(SBUF0 >= 48 && SBUF0 <= 57){ //verifica se e numero
	mov	a,#0x100 - 0x30
	add	a,_SBUF0
	jnc	00104$
	mov	a,_SBUF0
	add	a,#0xff - 0x39
	jc	00104$
	C$main.c$85$4$36 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:85: cria_vetor();
	lcall	_cria_vetor
00104$:
	C$main.c$87$3$34 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:87: if(SBUF0 == 0x0D){
	mov	a,#0x0d
	cjne	a,_SBUF0,00113$
	C$main.c$88$4$37 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:88: cria_numero();
	lcall	_cria_numero
	C$main.c$89$4$37 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:89: flag2 = 0;
	clr	_flag2
	C$main.c$90$4$37 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:90: flag1 = 0;
	clr	_flag1
	C$main.c$91$4$37 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:91: x = 0;
	mov	_x,#0x00
	C$main.c$92$4$37 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:92: tamanho = 0;			
	mov	_tamanho,#0x00
00113$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$96$1$32 ==.
	XG$interrupcao_serial$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'escreve_byte_controle'
;------------------------------------------------------------
;endereco_dispositivo      Allocated to registers r7 
;------------------------------------------------------------
	G$escreve_byte_controle$0$0 ==.
	C$main.c$98$1$32 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:98: unsigned char escreve_byte_controle(unsigned char endereco_dispositivo, __bit RW){
;	-----------------------------------------
;	 function escreve_byte_controle
;	-----------------------------------------
_escreve_byte_controle:
	mov	r7,dpl
	C$main.c$100$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:100: STA = 1; // Gera condicao de Start
	setb	_STA
	C$main.c$101$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:101: SI = 0; 
	clr	_SI
	C$main.c$102$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:102: while(SI == 0); // Quando sair o Status mudou
00101$:
	jnb	_SI,00101$
	C$main.c$103$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:103: if(SMB0STA != 0x08 && SMB0STA != 0x10){
	mov	a,#0x08
	cjne	a,_SMB0STA,00147$
	sjmp	00105$
00147$:
	mov	a,#0x10
	cjne	a,_SMB0STA,00148$
	sjmp	00105$
00148$:
	C$main.c$104$2$40 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:104: return (SMB0STA);
	mov	dpl,_SMB0STA
	sjmp	00117$
00105$:
	C$main.c$106$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:106: SMB0DAT = ( endereco_dispositivo & 0xfe) | RW; // Modelo o COntrol Byte
	anl	ar7,#0xfe
	mov	c,_escreve_byte_controle_PARM_2
	clr	a
	rlc	a
	mov	r6,a
	orl	a,r7
	mov	_SMB0DAT,a
	C$main.c$107$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:107: STA = 0; //
	clr	_STA
	C$main.c$108$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:108: SI = 0;
	clr	_SI
	C$main.c$109$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:109: while(SI == 0); // Sai quando houver mudanca no status	
00107$:
	jnb	_SI,00107$
	C$main.c$110$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:110: if(RW == W){ //verifica se e escrita	
	jb	_escreve_byte_controle_PARM_2,00115$
	C$main.c$111$2$41 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:111: if(SMB0STA != 0x18){ // 0x18 ack recebido em escrita		
	mov	a,#0x18
	cjne	a,_SMB0STA,00151$
	sjmp	00116$
00151$:
	C$main.c$112$3$42 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:112: return (SMB0STA);			
	mov	dpl,_SMB0STA
	sjmp	00117$
00115$:
	C$main.c$115$2$43 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:115: if(SMB0STA != 0x40){ // 0x40 ack rebecido em leitura
	mov	a,#0x40
	cjne	a,_SMB0STA,00152$
	sjmp	00116$
00152$:
	C$main.c$116$3$44 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:116: return (SMB0STA);
	mov	dpl,_SMB0STA
	sjmp	00117$
00116$:
	C$main.c$119$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:119: return (0);
	mov	dpl,#0x00
00117$:
	C$main.c$121$1$39 ==.
	XG$escreve_byte_controle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'escreve_byte_dados'
;------------------------------------------------------------
;dado                      Allocated to registers 
;------------------------------------------------------------
	G$escreve_byte_dados$0$0 ==.
	C$main.c$122$1$39 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:122: unsigned char escreve_byte_dados(unsigned char dado){
;	-----------------------------------------
;	 function escreve_byte_dados
;	-----------------------------------------
_escreve_byte_dados:
	mov	_SMB0DAT,dpl
	C$main.c$124$1$46 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:124: SI = 0;
	clr	_SI
	C$main.c$125$1$46 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:125: while(SI == 0);
00101$:
	jnb	_SI,00101$
	C$main.c$126$1$46 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:126: if(SMB0STA != 0x28){ // 0x28 byte de dados transmitido e ack recebido	
	mov	a,#0x28
	cjne	a,_SMB0STA,00118$
	sjmp	00105$
00118$:
	C$main.c$127$2$47 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:127: return (SMB0STA);
	mov	dpl,_SMB0STA
	sjmp	00106$
00105$:
	C$main.c$129$1$46 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:129: return (0);
	mov	dpl,#0x00
00106$:
	C$main.c$130$1$46 ==.
	XG$escreve_byte_dados$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$main.c$132$1$46 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:132: void putchar(char c){
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	_SBUF0,dpl
	C$main.c$134$1$49 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:134: while(TI0 == 0); 
00101$:
	C$main.c$135$1$49 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:135: TI0 = 0;
	jbc	_TI0,00112$
	sjmp	00101$
00112$:
	C$main.c$136$1$49 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer4_ISR'
;------------------------------------------------------------
	G$Timer4_ISR$0$0 ==.
	C$main.c$137$1$49 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:137: void Timer4_ISR (void) interrupt 16{
;	-----------------------------------------
;	 function Timer4_ISR
;	-----------------------------------------
_Timer4_ISR:
	C$main.c$138$1$51 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:138: SMB0CN &= ~0x40;  // Desabilita SMBus
	anl	_SMB0CN,#0xbf
	C$main.c$139$1$51 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:139: SMB0CN |= 0x40;   // Habilita SMBus
	orl	_SMB0CN,#0x40
	C$main.c$140$1$51 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:140: TF4 = 0;  
	clr	_TF4
	C$main.c$141$1$51 ==.
	XG$Timer4_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'escreve_eeprom'
;------------------------------------------------------------
;dados                     Allocated with name '_escreve_eeprom_PARM_2'
;endereco                  Allocated to registers r7 
;------------------------------------------------------------
	G$escreve_eeprom$0$0 ==.
	C$main.c$143$1$51 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:143: int escreve_eeprom(unsigned char endereco, unsigned char dados){	
;	-----------------------------------------
;	 function escreve_eeprom
;	-----------------------------------------
_escreve_eeprom:
	mov	r7,dpl
	C$main.c$144$1$53 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:144: if(!escreve_byte_controle(EEPROM, W)){
	clr	_escreve_byte_controle_PARM_2
	mov	dpl,#0xa0
	push	ar7
	lcall	_escreve_byte_controle
	mov	a,dpl
	pop	ar7
	jnz	00112$
	C$main.c$145$2$54 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:145: if(escreve_byte_dados(endereco) == 0 ){
	mov	dpl,r7
	lcall	_escreve_byte_dados
	mov	a,dpl
	jnz	00112$
	C$main.c$146$3$55 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:146: if(escreve_byte_dados(dados) == 0){		
	mov	dpl,_escreve_eeprom_PARM_2
	lcall	_escreve_byte_dados
	mov	a,dpl
	jnz	00112$
	C$main.c$147$4$56 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:147: STO = 1;
	setb	_STO
	C$main.c$148$4$56 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:148: SI = 0;
	clr	_SI
	C$main.c$149$4$56 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:149: while(STO == 1);		
00101$:
	jb	_STO,00101$
	C$main.c$150$4$56 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:150: while(escreve_byte_controle(EEPROM, W) != 0){			
00104$:
	clr	_escreve_byte_controle_PARM_2
	mov	dpl,#0xa0
	lcall	_escreve_byte_controle
	mov	a,dpl
	jz	00106$
	C$main.c$151$5$57 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:151: escreve_byte_controle(EEPROM, W);
	clr	_escreve_byte_controle_PARM_2
	mov	dpl,#0xa0
	lcall	_escreve_byte_controle
	sjmp	00104$
00106$:
	C$main.c$153$4$56 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:153: return (0);							
	mov	dptr,#0x0000
	sjmp	00113$
00112$:
	C$main.c$157$1$53 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:157: return (SMB0STA);
	mov	r6,_SMB0STA
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
00113$:
	C$main.c$159$1$53 ==.
	XG$escreve_eeprom$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'leitura_eeprom'
;------------------------------------------------------------
;endereco                  Allocated to registers r7 
;------------------------------------------------------------
	G$leitura_eeprom$0$0 ==.
	C$main.c$161$1$53 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:161: unsigned char leitura_eeprom(unsigned char endereco){
;	-----------------------------------------
;	 function leitura_eeprom
;	-----------------------------------------
_leitura_eeprom:
	mov	r7,dpl
	C$main.c$162$1$59 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:162: if(!escreve_byte_controle(EEPROM, W) ){
	clr	_escreve_byte_controle_PARM_2
	mov	dpl,#0xa0
	push	ar7
	lcall	_escreve_byte_controle
	mov	a,dpl
	pop	ar7
	jnz	00112$
	C$main.c$163$2$60 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:163: if(escreve_byte_dados(endereco) == 0 ){
	mov	dpl,r7
	lcall	_escreve_byte_dados
	mov	a,dpl
	jnz	00112$
	C$main.c$164$3$61 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:164: if(escreve_byte_controle(EEPROM, R) == 0){	
	setb	_escreve_byte_controle_PARM_2
	mov	dpl,#0xa0
	lcall	_escreve_byte_controle
	mov	a,dpl
	jnz	00112$
	C$main.c$165$4$62 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:165: AA = 0;
	clr	_AA
	C$main.c$166$4$62 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:166: SI = 0;
	clr	_SI
	C$main.c$167$4$62 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:167: while(SI == 0);		
00101$:
	jnb	_SI,00101$
	C$main.c$168$4$62 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:168: STO = 1;
	setb	_STO
	C$main.c$169$4$62 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:169: SI = 0;
	clr	_SI
	C$main.c$170$4$62 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:170: while(STO == 1);								
00104$:
	jb	_STO,00104$
00112$:
	C$main.c$174$1$59 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:174: return (SMB0DAT);
	mov	dpl,_SMB0DAT
	C$main.c$175$1$59 ==.
	XG$leitura_eeprom$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_vetor'
;------------------------------------------------------------
	G$print_vetor$0$0 ==.
	C$main.c$176$1$59 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:176: void print_vetor(void){
;	-----------------------------------------
;	 function print_vetor
;	-----------------------------------------
_print_vetor:
	C$main.c$177$1$64 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:177: for(i = 0; i < tamanho; i++){
	clr	a
	mov	_i,a
	mov	(_i + 1),a
00103$:
	mov	r6,_tamanho
	mov	r7,#0x00
	clr	c
	mov	a,_i
	subb	a,r6
	mov	a,(_i + 1)
	subb	a,r7
	jnc	00101$
	C$main.c$178$2$65 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:178: printf_fast_f("%u", vetor[i]);	
	mov	a,_i
	add	a,_i
	mov	r6,a
	mov	a,(_i + 1)
	rlc	a
	mov	a,r6
	add	a,#_vetor
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$177$1$64 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:177: for(i = 0; i < tamanho; i++){
	inc	_i
	clr	a
	cjne	a,_i,00103$
	inc	(_i + 1)
	sjmp	00103$
00101$:
	C$main.c$180$1$64 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:180: printf_fast_f("\n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$181$1$64 ==.
	XG$print_vetor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cria_numero'
;------------------------------------------------------------
;mult                      Allocated to registers r6 r7 
;------------------------------------------------------------
	G$cria_numero$0$0 ==.
	C$main.c$183$1$64 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:183: void cria_numero(void){
;	-----------------------------------------
;	 function cria_numero
;	-----------------------------------------
_cria_numero:
	C$main.c$184$1$64 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:184: unsigned int mult =  1;	
	mov	r6,#0x01
	C$main.c$185$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:185: for(i = 0 ; i < tamanho-1; i++){
	clr	a
	mov	r7,a
	mov	_i,a
	mov	(_i + 1),a
00109$:
	mov	r4,_tamanho
	mov	r5,#0x00
	dec	r4
	cjne	r4,#0xff,00134$
	dec	r5
00134$:
	clr	c
	mov	a,_i
	subb	a,r4
	mov	a,(_i + 1)
	subb	a,r5
	jnc	00101$
	C$main.c$186$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:186: mult *= 10;		
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	C$main.c$185$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:185: for(i = 0 ; i < tamanho-1; i++){
	inc	_i
	clr	a
	cjne	a,_i,00109$
	inc	(_i + 1)
	sjmp	00109$
00101$:
	C$main.c$189$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:189: for(i = 0; i < tamanho; i++){
	clr	a
	mov	_i,a
	mov	(_i + 1),a
00112$:
	mov	r4,_tamanho
	mov	r5,#0x00
	clr	c
	mov	a,_i
	subb	a,r4
	mov	a,(_i + 1)
	subb	a,r5
	jnc	00102$
	C$main.c$190$2$69 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:190: input_numerico += vetor[i]*mult;
	mov	a,_i
	add	a,_i
	mov	r4,a
	mov	a,(_i + 1)
	rlc	a
	mov	a,r4
	add	a,#_vetor
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	dec	r1
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	push	ar7
	push	ar6
	lcall	__mulint
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_input_numerico
	mov	dph,(_input_numerico + 1)
	mov	b,(_input_numerico + 2)
	mov	a,(_input_numerico + 3)
	lcall	___fsadd
	mov	_input_numerico,dpl
	mov	(_input_numerico + 1),dph
	mov	(_input_numerico + 2),b
	mov	(_input_numerico + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	C$main.c$191$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:191: mult /= 10	;		
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	C$main.c$189$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:189: for(i = 0; i < tamanho; i++){
	inc	_i
	clr	a
	cjne	a,_i,00112$
	inc	(_i + 1)
	sjmp	00112$
00102$:
	C$main.c$193$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:193: if(flag1){// se for temperatura
	jb	_flag1,00139$
	ljmp	00106$
00139$:
	C$main.c$194$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:194: input_numerico /= 10;
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,_input_numerico
	mov	dph,(_input_numerico + 1)
	mov	b,(_input_numerico + 2)
	mov	a,(_input_numerico + 3)
	lcall	___fsdiv
	mov	_input_numerico,dpl
	mov	(_input_numerico + 1),dph
	mov	(_input_numerico + 2),b
	mov	(_input_numerico + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$195$2$70 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:195: temp = input_numerico;
	mov	_temp,_input_numerico
	mov	(_temp + 1),(_input_numerico + 1)
	mov	(_temp + 2),(_input_numerico + 2)
	mov	(_temp + 3),(_input_numerico + 3)
	C$main.c$196$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:196: escreve_dac0(temp*5.0); // escreve a temperatura no DAC
	push	_temp
	push	(_temp + 1)
	push	(_temp + 2)
	push	(_temp + 3)
	mov	dptr,#0x0000
	mov	b,#0xa0
	mov	a,#0x40
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_escreve_dac0
	C$main.c$197$2$70 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:197: printf_fast_f("\nTemp. Definida: %2.1f \n", temp);
	push	_temp
	push	(_temp + 1)
	push	(_temp + 2)
	push	(_temp + 3)
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	sjmp	00114$
00106$:
	C$main.c$199$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:199: else if(flag2){//se for intervalo
	jnb	_flag2,00114$
	C$main.c$200$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:200: intervalo = input_numerico;
	mov	dpl,_input_numerico
	mov	dph,(_input_numerico + 1)
	mov	b,(_input_numerico + 2)
	mov	a,(_input_numerico + 3)
	lcall	___fs2uint
	mov	_intervalo,dpl
	mov	(_intervalo + 1),dph
	C$main.c$201$2$71 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:201: printf_fast_f("\nIntervalo Definido: %u \n", intervalo);
	push	_intervalo
	push	(_intervalo + 1)
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00114$:
	C$main.c$204$1$67 ==.
	XG$cria_numero$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cria_vetor'
;------------------------------------------------------------
	G$cria_vetor$0$0 ==.
	C$main.c$205$1$67 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:205: void cria_vetor(void){
;	-----------------------------------------
;	 function cria_vetor
;	-----------------------------------------
_cria_vetor:
	C$main.c$206$1$73 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:206: input_numerico = 0;	
	clr	a
	mov	_input_numerico,a
	mov	(_input_numerico + 1),a
	mov	(_input_numerico + 2),a
	mov	(_input_numerico + 3),a
	C$main.c$207$1$73 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:207: if(x >= 3){
	mov	a,#0x100 - 0x03
	add	a,_x
	jnc	00102$
	C$main.c$208$2$74 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:208: printf_fast_f("Numero Excedido\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
00102$:
	C$main.c$210$1$73 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:210: if(x <= 2){
	mov	a,_x
	add	a,#0xff - 0x02
	jc	00105$
	C$main.c$211$2$75 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:211: vetor[x] = transf_numero(SBUF0);
	mov	a,_x
	add	a,_x
	add	a,#_vetor
	mov	r1,a
	mov	dpl,_SBUF0
	push	ar1
	lcall	_transf_numero
	mov	r7,dpl
	pop	ar1
	mov	r6,#0x00
	mov	@r1,ar7
	inc	r1
	mov	@r1,ar6
	C$main.c$212$2$75 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:212: x++;
	inc	_x
	C$main.c$213$2$75 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:213: tamanho += 1;
	inc	_tamanho
00105$:
	C$main.c$215$1$73 ==.
	XG$cria_vetor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'contador_func'
;------------------------------------------------------------
	G$contador_func$0$0 ==.
	C$main.c$221$1$73 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:221: void contador_func(void) __interrupt 5{	
;	-----------------------------------------
;	 function contador_func
;	-----------------------------------------
_contador_func:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$main.c$222$1$77 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:222: contador++;
	inc	_contador
	clr	a
	cjne	a,_contador,00128$
	inc	(_contador + 1)
00128$:
	C$main.c$223$1$77 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:223: if(contador == 250){
	mov	a,#0xfa
	cjne	a,_contador,00129$
	clr	a
	cjne	a,(_contador + 1),00129$
	sjmp	00130$
00129$:
	ljmp	00111$
00130$:
	C$main.c$224$2$78 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:224: m_segundos += 1;
	inc	_m_segundos
	clr	a
	cjne	a,_m_segundos,00131$
	inc	(_m_segundos + 1)
00131$:
	C$main.c$225$1$77 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:225: if(	m_segundos == intervalo*1000){		
	mov	__mulint_PARM_2,_intervalo
	mov	(__mulint_PARM_2 + 1),(_intervalo + 1)
	mov	dptr,#0x03e8
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	cjne	a,_m_segundos,00132$
	mov	a,r7
	cjne	a,(_m_segundos + 1),00132$
	sjmp	00133$
00132$:
	ljmp	00108$
00133$:
	C$main.c$226$3$79 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:226: segundos += 1;
	inc	_segundos
	clr	a
	cjne	a,_segundos,00134$
	inc	(_segundos + 1)
00134$:
	C$main.c$227$3$79 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:227: temp_dac = le_adc0()/(16.0*5.0); //leitura do adc
	lcall	_le_adc0
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xa0
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	_temp_dac,dpl
	mov	(_temp_dac + 1),dph
	mov	(_temp_dac + 2),b
	mov	(_temp_dac + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$228$3$79 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:228: printf_fast_f("Leitura ADC0: %2.1fC \n", temp_dac);		
	push	_temp_dac
	push	(_temp_dac + 1)
	push	(_temp_dac + 2)
	push	(_temp_dac + 3)
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	C$main.c$229$3$79 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:229: if(posicao == 1){ //restaura posicao antiga
	mov	a,#0x01
	cjne	a,_posicao,00104$
	C$main.c$230$4$80 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:230: if(leitura_eeprom(0) != 1){
	mov	dpl,#0x00
	lcall	_leitura_eeprom
	mov	r7,dpl
	cjne	r7,#0x01,00137$
	sjmp	00104$
00137$:
	C$main.c$231$5$81 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:231: posicao = leitura_eeprom(0) + 1; //valor da ultima leitura 
	mov	dpl,#0x00
	lcall	_leitura_eeprom
	mov	a,dpl
	inc	a
	mov	_posicao,a
00104$:
	C$main.c$234$3$79 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:234: if(posicao > 127){
	mov	a,_posicao
	add	a,#0xff - 0x7f
	jnc	00106$
	C$main.c$235$4$82 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:235: posicao = 1;
	mov	_posicao,#0x01
00106$:
	C$main.c$237$1$77 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:237: escreve_eeprom(posicao, temp_dac*5); //escreve na memoria
	push	_temp_dac
	push	(_temp_dac + 1)
	push	(_temp_dac + 2)
	push	(_temp_dac + 3)
	mov	dptr,#0x0000
	mov	b,#0xa0
	mov	a,#0x40
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	_escreve_eeprom_PARM_2,dpl
	mov	dpl,_posicao
	lcall	_escreve_eeprom
	C$main.c$238$3$79 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:238: escreve_eeprom(0, posicao); //escreve referencia
	mov	_escreve_eeprom_PARM_2,_posicao
	mov	dpl,#0x00
	lcall	_escreve_eeprom
	C$main.c$239$3$79 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:239: posicao++;
	inc	_posicao
	C$main.c$240$3$79 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:240: m_segundos = 0;
	clr	a
	mov	_m_segundos,a
	mov	(_m_segundos + 1),a
00108$:
	C$main.c$242$2$78 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:242: contador = 0;
	clr	a
	mov	_contador,a
	mov	(_contador + 1),a
00111$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$245$1$77 ==.
	XG$contador_func$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'le_adc0'
;------------------------------------------------------------
	G$le_adc0$0$0 ==.
	C$main.c$246$1$77 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:246: unsigned int le_adc0(void){
;	-----------------------------------------
;	 function le_adc0
;	-----------------------------------------
_le_adc0:
	C$main.c$247$1$84 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:247: ADC0CF = (ADC0CF & 0xf8) | 0;
	anl	_ADC0CF,#0xf8
	C$main.c$248$1$84 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:248: AMX0SL = 0;
	mov	_AMX0SL,#0x00
	C$main.c$249$1$84 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:249: AD0BUSY = 1;
	setb	_AD0BUSY
	C$main.c$250$1$84 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:250: while(!AD0INT);
00101$:
	jnb	_AD0INT,00101$
	C$main.c$251$1$84 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:251: return(ADC0H << 8 | ADC0L);
	mov	r7,_ADC0H
	mov	r6,#0x00
	mov	r4,_ADC0L
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	dpl,a
	mov	a,r5
	orl	a,r7
	mov	dph,a
	C$main.c$252$1$84 ==.
	XG$le_adc0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'show_memoria'
;------------------------------------------------------------
	G$show_memoria$0$0 ==.
	C$main.c$254$1$84 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:254: void show_memoria(void){
;	-----------------------------------------
;	 function show_memoria
;	-----------------------------------------
_show_memoria:
	C$main.c$255$1$86 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:255: j = leitura_eeprom(0);
	mov	dpl,#0x00
	lcall	_leitura_eeprom
	mov	_j,dpl
	C$main.c$256$1$86 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:256: for(i = 1 ;  i<= j; i++){
	mov	_i,#0x01
	mov	(_i + 1),#0x00
00103$:
	mov	r6,_j
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,_i
	mov	a,r7
	subb	a,(_i + 1)
	jc	00105$
	C$main.c$257$2$87 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:257: printf_fast_f("End: %d Temp: %f \n",i, leitura_eeprom(i)/5.0);
	mov	dpl,_i
	lcall	_leitura_eeprom
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xa0
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	_i
	push	(_i + 1)
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	C$main.c$256$1$86 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:256: for(i = 1 ;  i<= j; i++){
	inc	_i
	clr	a
	cjne	a,_i,00103$
	inc	(_i + 1)
	sjmp	00103$
00105$:
	C$main.c$259$1$86 ==.
	XG$show_memoria$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$260$1$86 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:260: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$261$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:261: Init_Device();
	lcall	_Init_Device
	C$main.c$262$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:262: SFRPAGE = LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
	C$main.c$263$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:263: TR2=0;	
	clr	_TR2
	C$main.c$264$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:264: while(1){
00110$:
	C$main.c$265$2$90 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:265: if(fbr == 1){
	C$main.c$266$3$91 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:266: fbr = 0;
	jbc	_fbr,00135$
	sjmp	00110$
00135$:
	C$main.c$267$3$91 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:267: switch(SBUF0){
	mov	r7,_SBUF0
	cjne	r7,#0x69,00136$
	sjmp	00101$
00136$:
	cjne	r7,#0x70,00137$
	sjmp	00104$
00137$:
	cjne	r7,#0x73,00138$
	sjmp	00103$
00138$:
	cjne	r7,#0x74,00139$
	sjmp	00102$
00139$:
	C$main.c$268$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:268: case 'i'://solicita entrada do intervalo
	cjne	r7,#0x76,00110$
	sjmp	00105$
00101$:
	C$main.c$269$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:269: flag2 = 1;				
	setb	_flag2
	C$main.c$270$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:270: printf_fast_f("Informe o tempo (s) do intervalo entre leituras: ");				
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$271$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:271: break;
	C$main.c$273$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:273: case 't'://solicita temperatura
	sjmp	00110$
00102$:
	C$main.c$274$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:274: flag1 = 1;
	setb	_flag1
	C$main.c$275$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:275: printf_fast_f("Informe a temperatura (xx.x) a ser emulada: ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$276$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:276: break;
	C$main.c$278$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:278: case 's': //inicia processo de leitura e armazenamento
	sjmp	00110$
00103$:
	C$main.c$279$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:279: printf_fast_f("Inicio da Rotina \n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$280$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:280: contador=0;
	clr	a
	mov	_contador,a
	mov	(_contador + 1),a
	C$main.c$281$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:281: TR2=1;//inicializa timer2
	setb	_TR2
	C$main.c$282$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:282: TF2 = 0;		
	clr	_TF2
	C$main.c$283$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:283: break;
	C$main.c$285$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:285: case'p': //termina o processo de leitura e armazenamento
	sjmp	00110$
00104$:
	C$main.c$286$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:286: printf_fast_f("Parado\n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$287$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:287: TR2=0; // Encerro o timer2
	clr	_TR2
	C$main.c$288$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:288: TF2 = 0;
	clr	_TF2
	C$main.c$289$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:289: break;
	C$main.c$291$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:291: case 'v'://Mostra a memoria
	sjmp	00110$
00105$:
	C$main.c$292$4$92 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:292: show_memoria();
	lcall	_show_memoria
	C$main.c$294$1$89 ==.
;	C:\Users\marci\Desktop\faculdade\MCAP\pratica\firmware-sensor\main.c:294: }
	sjmp	00110$
	C$main.c$299$1$89 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_0$0$0 == .
___str_0:
	.ascii "%u"
	.db 0x00
Fmain$__str_1$0$0 == .
___str_1:
	.db 0x0a
	.db 0x00
Fmain$__str_2$0$0 == .
___str_2:
	.db 0x0a
	.ascii "Temp. Definida: %2.1f "
	.db 0x0a
	.db 0x00
Fmain$__str_3$0$0 == .
___str_3:
	.db 0x0a
	.ascii "Intervalo Definido: %u "
	.db 0x0a
	.db 0x00
Fmain$__str_4$0$0 == .
___str_4:
	.ascii "Numero Excedido"
	.db 0x0a
	.db 0x00
Fmain$__str_5$0$0 == .
___str_5:
	.ascii "Leitura ADC0: %2.1fC "
	.db 0x0a
	.db 0x00
Fmain$__str_6$0$0 == .
___str_6:
	.ascii "End: %d Temp: %f "
	.db 0x0a
	.db 0x00
Fmain$__str_7$0$0 == .
___str_7:
	.ascii "Informe o tempo (s) do intervalo entre leituras: "
	.db 0x00
Fmain$__str_8$0$0 == .
___str_8:
	.ascii "Informe a temperatura (xx.x) a ser emulada: "
	.db 0x00
Fmain$__str_9$0$0 == .
___str_9:
	.ascii "Inicio da Rotina "
	.db 0x0a
	.db 0x00
Fmain$__str_10$0$0 == .
___str_10:
	.ascii "Parado"
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
