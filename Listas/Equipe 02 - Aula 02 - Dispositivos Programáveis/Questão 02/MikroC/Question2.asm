
_main:

;Question2.c,1 :: 		void main() {
;Question2.c,2 :: 		TRISB.RB0 = 0;  //Funçao principal
	BCF        TRISB+0, 0
;Question2.c,3 :: 		TRISB.RB1 = 0;  //Define o pino RB0 como saída
	BCF        TRISB+0, 1
;Question2.c,4 :: 		TRISB.RB2 = 0;  //Define o pino RB0 como saída
	BCF        TRISB+0, 2
;Question2.c,5 :: 		TRISB.RB3 = 0;  //Define o pino RB0 como saída
	BCF        TRISB+0, 3
;Question2.c,6 :: 		TRISB.RB4 = 0;  //Define o pino RB0 como saída
	BCF        TRISB+0, 4
;Question2.c,7 :: 		TRISB.RB5 = 0;  //Define o pino RB0 como saída
	BCF        TRISB+0, 5
;Question2.c,8 :: 		TRISB.RB6 = 0;  //Define o pino RB0 como saída
	BCF        TRISB+0, 6
;Question2.c,9 :: 		TRISB.RB7 = 0;  //Define o pino RB0 como saída
	BCF        TRISB+0, 7
;Question2.c,10 :: 		while (1) {     //Laço infinito
L_main0:
;Question2.c,11 :: 		PORTB.RB0 = 1;  //Liga o led conectado ao port RB0
	BSF        PORTB+0, 0
;Question2.c,12 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,13 :: 		PORTB.RB1 = 1;  //Liga o led conectado ao port RB1
	BSF        PORTB+0, 1
;Question2.c,14 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,15 :: 		PORTB.RB2 = 1;  //Liga o led conectado ao port RB2
	BSF        PORTB+0, 2
;Question2.c,16 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,17 :: 		PORTB.RB3 = 1;  //Liga o led conectado ao port RB3
	BSF        PORTB+0, 3
;Question2.c,18 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,19 :: 		PORTB.RB4 = 1;  //Liga o led conectado ao port RB4
	BSF        PORTB+0, 4
;Question2.c,20 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,21 :: 		PORTB.RB5 = 1;  //Liga o led conectado ao port RB5
	BSF        PORTB+0, 5
;Question2.c,22 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,23 :: 		PORTB.RB6 = 1;  //Liga o led conectado ao port RB6
	BSF        PORTB+0, 6
;Question2.c,24 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,25 :: 		PORTB.RB7 = 1;  //Liga o led conectado ao port RB7
	BSF        PORTB+0, 7
;Question2.c,26 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,27 :: 		PORTB.RB0 = 0;  //Desliga o led conectado ao port RB0
	BCF        PORTB+0, 0
;Question2.c,28 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,29 :: 		PORTB.RB1 = 0;  //Desliga o led conectado ao port RB1
	BCF        PORTB+0, 1
;Question2.c,30 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,31 :: 		PORTB.RB2 = 0;  //Desliga o led conectado ao port RB2
	BCF        PORTB+0, 2
;Question2.c,32 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,33 :: 		PORTB.RB3 = 0;  //Desliga o led conectado ao port RB3
	BCF        PORTB+0, 3
;Question2.c,34 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,35 :: 		PORTB.RB4 = 0;  //Desliga o led conectado ao port RB4
	BCF        PORTB+0, 4
;Question2.c,36 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,37 :: 		PORTB.RB5 = 0;  //Desliga o led conectado ao port RB5
	BCF        PORTB+0, 5
;Question2.c,38 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,39 :: 		PORTB.RB6 = 0;  //Desliga o led conectado ao port RB6
	BCF        PORTB+0, 6
;Question2.c,40 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,41 :: 		PORTB.RB7 = 0;  //Desliga o led conectado ao port RB7
	BCF        PORTB+0, 7
;Question2.c,42 :: 		Delay_ms(1000); //Aguarda 1 segundo
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
;Question2.c,43 :: 		}
	GOTO       L_main0
;Question2.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
