
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Q5.c,4 :: 		void interrupt()
;Q5.c,6 :: 		if(T0IF_bit)                               // verifica se houve estouro
	BTFSS      T0IF_bit+0, BitPos(T0IF_bit+0)
	GOTO       L_interrupt0
;Q5.c,8 :: 		contador++;                        // acrescenta
	INCF       _contador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contador+1, 1
;Q5.c,9 :: 		TMR0 = 0x06;                       //reinicia o TMR0
	MOVLW      6
	MOVWF      TMR0+0
;Q5.c,11 :: 		T0IF_bit = 0x00;          //limpa a flag
	BCF        T0IF_bit+0, BitPos(T0IF_bit+0)
;Q5.c,12 :: 		}
L_interrupt0:
;Q5.c,13 :: 		}
L_end_interrupt:
L__interrupt5:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Q5.c,15 :: 		void main() {
;Q5.c,17 :: 		OPTION_REG =0X81;      // DESABILITA RESISTORES DE PULL_UP INTERNOS
	MOVLW      129
	MOVWF      OPTION_REG+0
;Q5.c,20 :: 		GIE_bit =  0X01;        //HABILITA INTERRUPÇÃO GLOBAL
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
;Q5.c,21 :: 		PEIE_bit = 0X01;       //HABILITA A INTERRUPÇÃO POR PERIFERICOS
	BSF        PEIE_bit+0, BitPos(PEIE_bit+0)
;Q5.c,22 :: 		T0IE_bit = 0X01;       //HABILITA  INTERRUPÃO POR ESTOURO DO TMR0
	BSF        T0IE_bit+0, BitPos(T0IE_bit+0)
;Q5.c,24 :: 		TMR0 = 0X06;            // INICIA A CONTAGEM EM 6
	MOVLW      6
	MOVWF      TMR0+0
;Q5.c,26 :: 		TRISB.RB4 =0X00;        // SAIDA DIGITAL
	BCF        TRISB+0, 4
;Q5.c,27 :: 		RB4_bit  =0x00;         // INICIA RB4 EM LOW
	BCF        RB4_bit+0, BitPos(RB4_bit+0)
;Q5.c,29 :: 		while(1)
L_main1:
;Q5.c,31 :: 		if( contador == 250)
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVLW      250
	XORWF      _contador+0, 0
L__main7:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Q5.c,33 :: 		RB4_bit = ~RB4_bit;         // inverte estado do
	MOVLW
	XORWF      RB4_bit+0, 1
;Q5.c,34 :: 		contador = 0x00;
	CLRF       _contador+0
	CLRF       _contador+1
;Q5.c,35 :: 		}
L_main3:
;Q5.c,38 :: 		}
	GOTO       L_main1
;Q5.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
