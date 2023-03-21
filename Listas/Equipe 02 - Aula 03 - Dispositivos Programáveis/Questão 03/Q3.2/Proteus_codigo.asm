
_main:

;Proteus_codigo.c,5 :: 		void main() {
;Proteus_codigo.c,6 :: 		TRISA.BOTAO_1 = 1;
	BSF        TRISA+0, 1
;Proteus_codigo.c,7 :: 		TRISA.BOTAO_2 = 1;
	BSF        TRISA+0, 2
;Proteus_codigo.c,8 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;Proteus_codigo.c,9 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;Proteus_codigo.c,11 :: 		while(1){
L_main0:
;Proteus_codigo.c,13 :: 		if(PORTA.BOTAO_1 == 0 ){
	BTFSC      PORTA+0, 1
	GOTO       L_main2
;Proteus_codigo.c,14 :: 		x++;
	INCF       _x+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x+1, 1
;Proteus_codigo.c,16 :: 		switch(x){
	GOTO       L_main3
;Proteus_codigo.c,18 :: 		case 1 : ("1");
L_main5:
;Proteus_codigo.c,19 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,20 :: 		PORTB=0b00000110;
	MOVLW      6
	MOVWF      PORTB+0
;Proteus_codigo.c,21 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,23 :: 		case 2 :("2");
L_main7:
;Proteus_codigo.c,24 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,25 :: 		PORTB=0b01011011;
	MOVLW      91
	MOVWF      PORTB+0
;Proteus_codigo.c,26 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,28 :: 		case 3 :("3");
L_main9:
;Proteus_codigo.c,29 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,30 :: 		PORTB=0b01001111;
	MOVLW      79
	MOVWF      PORTB+0
;Proteus_codigo.c,31 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,33 :: 		case 4 :("4");
L_main11:
;Proteus_codigo.c,34 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,35 :: 		PORTB=0b01100110;
	MOVLW      102
	MOVWF      PORTB+0
;Proteus_codigo.c,36 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,38 :: 		case 5 :("5");
L_main13:
;Proteus_codigo.c,39 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,40 :: 		PORTB=0b01101101;
	MOVLW      109
	MOVWF      PORTB+0
;Proteus_codigo.c,41 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,43 :: 		case 6 :("6");
L_main15:
;Proteus_codigo.c,44 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,45 :: 		PORTB=0b01111101;
	MOVLW      125
	MOVWF      PORTB+0
;Proteus_codigo.c,46 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,48 :: 		case 7 :("7");
L_main17:
;Proteus_codigo.c,49 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,50 :: 		PORTB=0b00000111;
	MOVLW      7
	MOVWF      PORTB+0
;Proteus_codigo.c,51 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,53 :: 		case 8 :("8");
L_main19:
;Proteus_codigo.c,54 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,55 :: 		PORTB=0b01111111;
	MOVLW      127
	MOVWF      PORTB+0
;Proteus_codigo.c,56 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,58 :: 		case 9 :("9");
L_main21:
;Proteus_codigo.c,59 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,60 :: 		PORTB=0b01101111;
	MOVLW      111
	MOVWF      PORTB+0
;Proteus_codigo.c,61 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,63 :: 		case 10 :("10");
L_main23:
;Proteus_codigo.c,64 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Proteus_codigo.c,65 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;Proteus_codigo.c,66 :: 		break;
	GOTO       L_main4
;Proteus_codigo.c,68 :: 		}
L_main3:
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVLW      1
	XORWF      _x+0, 0
L__main28:
	BTFSC      STATUS+0, 2
	GOTO       L_main5
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main29
	MOVLW      2
	XORWF      _x+0, 0
L__main29:
	BTFSC      STATUS+0, 2
	GOTO       L_main7
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      3
	XORWF      _x+0, 0
L__main30:
	BTFSC      STATUS+0, 2
	GOTO       L_main9
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      4
	XORWF      _x+0, 0
L__main31:
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVLW      5
	XORWF      _x+0, 0
L__main32:
	BTFSC      STATUS+0, 2
	GOTO       L_main13
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      6
	XORWF      _x+0, 0
L__main33:
	BTFSC      STATUS+0, 2
	GOTO       L_main15
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      7
	XORWF      _x+0, 0
L__main34:
	BTFSC      STATUS+0, 2
	GOTO       L_main17
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVLW      8
	XORWF      _x+0, 0
L__main35:
	BTFSC      STATUS+0, 2
	GOTO       L_main19
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVLW      9
	XORWF      _x+0, 0
L__main36:
	BTFSC      STATUS+0, 2
	GOTO       L_main21
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      10
	XORWF      _x+0, 0
L__main37:
	BTFSC      STATUS+0, 2
	GOTO       L_main23
L_main4:
;Proteus_codigo.c,69 :: 		if (x >= 10) {//Se x for maior ou igual a 10
	MOVLW      128
	XORWF      _x+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      10
	SUBWF      _x+0, 0
L__main38:
	BTFSS      STATUS+0, 0
	GOTO       L_main25
;Proteus_codigo.c,70 :: 		x = 0;//Atribui 0 a contador
	CLRF       _x+0
	CLRF       _x+1
;Proteus_codigo.c,71 :: 		}
L_main25:
;Proteus_codigo.c,72 :: 		}
L_main2:
;Proteus_codigo.c,73 :: 		if(PORTA.BOTAO_2 == 0) {
	BTFSC      PORTA+0, 2
	GOTO       L_main26
;Proteus_codigo.c,74 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;Proteus_codigo.c,75 :: 		x-=x;
	CLRF       _x+0
	CLRF       _x+1
;Proteus_codigo.c,76 :: 		}
L_main26:
;Proteus_codigo.c,77 :: 		}
	GOTO       L_main0
;Proteus_codigo.c,78 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
