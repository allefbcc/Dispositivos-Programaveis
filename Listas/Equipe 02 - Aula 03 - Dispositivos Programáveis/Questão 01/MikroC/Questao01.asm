
_main:

;Questao01.c,2 :: 		void main() {
;Questao01.c,3 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;Questao01.c,4 :: 		TRISA.RA0 = 0;
	BCF        TRISA+0, 0
;Questao01.c,5 :: 		TRISA.RA1 = 1;
	BSF        TRISA+0, 1
;Questao01.c,9 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;Questao01.c,10 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Questao01.c,11 :: 		PORTB=0b00000110;
	MOVLW      6
	MOVWF      PORTB+0
;Questao01.c,12 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Questao01.c,13 :: 		PORTB=0b01011011;
	MOVLW      91
	MOVWF      PORTB+0
;Questao01.c,14 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Questao01.c,15 :: 		PORTB=0b01001111;
	MOVLW      79
	MOVWF      PORTB+0
;Questao01.c,16 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Questao01.c,17 :: 		PORTB=0b01100110;
	MOVLW      102
	MOVWF      PORTB+0
;Questao01.c,18 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Questao01.c,19 :: 		PORTB=0b01101101;
	MOVLW      109
	MOVWF      PORTB+0
;Questao01.c,20 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;Questao01.c,21 :: 		PORTB=0b011111101;
	MOVLW      253
	MOVWF      PORTB+0
;Questao01.c,22 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;Questao01.c,23 :: 		PORTB=0b00000111;
	MOVLW      7
	MOVWF      PORTB+0
;Questao01.c,24 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;Questao01.c,25 :: 		PORTB=0b01111111;
	MOVLW      127
	MOVWF      PORTB+0
;Questao01.c,26 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;Questao01.c,27 :: 		PORTB=0b01101111;
	MOVLW      111
	MOVWF      PORTB+0
;Questao01.c,28 :: 		PORTA=0b00000001;
	MOVLW      1
	MOVWF      PORTA+0
;Questao01.c,29 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;Questao01.c,32 :: 		}
L_main1:
;Questao01.c,34 :: 		while(1){
L_main12:
;Questao01.c,35 :: 		if(PORTA.RA1 == 0){
	BTFSC      PORTA+0, 1
	GOTO       L_main14
;Questao01.c,36 :: 		PORTA=0b00000000;
	CLRF       PORTA+0
;Questao01.c,38 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;Questao01.c,39 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;Questao01.c,40 :: 		PORTB=0b00000110;
	MOVLW      6
	MOVWF      PORTB+0
;Questao01.c,41 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;Questao01.c,42 :: 		PORTB=0b01011011;
	MOVLW      91
	MOVWF      PORTB+0
;Questao01.c,43 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;Questao01.c,44 :: 		PORTB=0b01001111;
	MOVLW      79
	MOVWF      PORTB+0
;Questao01.c,45 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;Questao01.c,46 :: 		PORTB=0b01100110;
	MOVLW      102
	MOVWF      PORTB+0
;Questao01.c,47 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;Questao01.c,48 :: 		PORTB=0b01101101;
	MOVLW      109
	MOVWF      PORTB+0
;Questao01.c,49 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
	NOP
;Questao01.c,50 :: 		PORTB=0b011111101;
	MOVLW      253
	MOVWF      PORTB+0
;Questao01.c,51 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
	NOP
;Questao01.c,52 :: 		PORTB=0b00000111;
	MOVLW      7
	MOVWF      PORTB+0
;Questao01.c,53 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
;Questao01.c,54 :: 		PORTB=0b01111111;
	MOVLW      127
	MOVWF      PORTB+0
;Questao01.c,55 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
	NOP
;Questao01.c,56 :: 		PORTB=0b01101111;
	MOVLW      111
	MOVWF      PORTB+0
;Questao01.c,57 :: 		PORTA=0b00000001;
	MOVLW      1
	MOVWF      PORTA+0
;Questao01.c,58 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;Questao01.c,60 :: 		}
L_main14:
;Questao01.c,62 :: 		}
	GOTO       L_main12
;Questao01.c,65 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
