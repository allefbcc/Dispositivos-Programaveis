
_main:

;Q3.c,7 :: 		void main() {
;Q3.c,9 :: 		TRISA.BUT_1 = 1;
	BSF        TRISA+0, 0
;Q3.c,10 :: 		TRISA.BUT_2 = 1;           // Tris entrada
	BSF        TRISA+0, 1
;Q3.c,12 :: 		TRISB.RB0 = 0;
	BCF        TRISB+0, 0
;Q3.c,13 :: 		TRISB.RB1 = 0;
	BCF        TRISB+0, 1
;Q3.c,14 :: 		TRISB.RB2 = 0;
	BCF        TRISB+0, 2
;Q3.c,15 :: 		TRISB.RB3 = 0;            // Tris saida
	BCF        TRISB+0, 3
;Q3.c,16 :: 		TRISB.RB4 = 0;
	BCF        TRISB+0, 4
;Q3.c,17 :: 		TRISB.RB5 = 0;
	BCF        TRISB+0, 5
;Q3.c,18 :: 		TRISB.RB6 = 0;
	BCF        TRISB+0, 6
;Q3.c,19 :: 		TRISB.RB7 = 0;
	BCF        TRISB+0, 7
;Q3.c,21 :: 		PORTA.BUT_1 = 1;
	BSF        PORTA+0, 0
;Q3.c,22 :: 		PORTA.BUT_2 = 1;
	BSF        PORTA+0, 1
;Q3.c,23 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Q3.c,24 :: 		PORTB.RB1 = 0;             //Como as coisas começam.
	BCF        PORTB+0, 1
;Q3.c,25 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Q3.c,26 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Q3.c,27 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Q3.c,28 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Q3.c,29 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;Q3.c,30 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Q3.c,32 :: 		while(1){
L_main0:
;Q3.c,33 :: 		if (PORTA.BUT_1 == 0){
	BTFSC      PORTA+0, 0
	GOTO       L_main2
;Q3.c,34 :: 		PORTB.RB7 = 1;
	BSF        PORTB+0, 7
;Q3.c,35 :: 		Delay_ms (1000);
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
;Q3.c,36 :: 		PORTB.RB6 = 1;
	BSF        PORTB+0, 6
;Q3.c,37 :: 		Delay_ms (1000);
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
;Q3.c,38 :: 		PORTB.RB5 = 1;
	BSF        PORTB+0, 5
;Q3.c,39 :: 		Delay_ms (1000);
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
;Q3.c,40 :: 		PORTB.RB4 = 1;
	BSF        PORTB+0, 4
;Q3.c,41 :: 		Delay_ms (1000);
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
;Q3.c,42 :: 		PORTB.RB3 = 1;
	BSF        PORTB+0, 3
;Q3.c,43 :: 		Delay_ms (1000);
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
;Q3.c,44 :: 		PORTB.RB2 = 1;
	BSF        PORTB+0, 2
;Q3.c,45 :: 		Delay_ms (1000);
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
;Q3.c,46 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;Q3.c,47 :: 		Delay_ms (1000);
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
;Q3.c,48 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;Q3.c,50 :: 		}
L_main2:
;Q3.c,51 :: 		if (PORTA.BUT_2 == 0){
	BTFSC      PORTA+0, 1
	GOTO       L_main10
;Q3.c,52 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Q3.c,53 :: 		Delay_ms (1000);
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
;Q3.c,54 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;Q3.c,55 :: 		Delay_ms (1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;Q3.c,56 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Q3.c,57 :: 		Delay_ms (1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;Q3.c,58 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Q3.c,59 :: 		Delay_ms (1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;Q3.c,60 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Q3.c,61 :: 		Delay_ms (1000);
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
;Q3.c,62 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Q3.c,63 :: 		Delay_ms (1000);
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
;Q3.c,64 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Q3.c,65 :: 		Delay_ms (1000);
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
;Q3.c,66 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Q3.c,67 :: 		}
L_main10:
;Q3.c,68 :: 		}
	GOTO       L_main0
;Q3.c,69 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
