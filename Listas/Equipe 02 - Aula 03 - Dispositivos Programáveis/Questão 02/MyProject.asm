
_num1:

;MyProject.c,5 :: 		void num1(){
;MyProject.c,6 :: 		if(PORTA.BUTAO1 == 0 ){
	BTFSC      PORTA+0, 1
	GOTO       L_num10
;MyProject.c,7 :: 		x++;
	INCF       _x+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x+1, 1
;MyProject.c,9 :: 		switch(x){
	GOTO       L_num11
;MyProject.c,11 :: 		case 1 : ("1");
L_num13:
;MyProject.c,12 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_num14:
	DECFSZ     R13+0, 1
	GOTO       L_num14
	DECFSZ     R12+0, 1
	GOTO       L_num14
	DECFSZ     R11+0, 1
	GOTO       L_num14
	NOP
	NOP
;MyProject.c,13 :: 		PORTB=0b00000110;
	MOVLW      6
	MOVWF      PORTB+0
;MyProject.c,14 :: 		break;
	GOTO       L_num12
;MyProject.c,16 :: 		}
L_num11:
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__num120
	MOVLW      1
	XORWF      _x+0, 0
L__num120:
	BTFSC      STATUS+0, 2
	GOTO       L_num13
L_num12:
;MyProject.c,17 :: 		}
L_num10:
;MyProject.c,19 :: 		}
L_end_num1:
	RETURN
; end of _num1

_num2:

;MyProject.c,20 :: 		void num2(){
;MyProject.c,21 :: 		if(PORTA.BUTAO2 == 0) {
	BTFSC      PORTA+0, 2
	GOTO       L_num25
;MyProject.c,22 :: 		PORTB=0b01011011;
	MOVLW      91
	MOVWF      PORTB+0
;MyProject.c,23 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_num26:
	DECFSZ     R13+0, 1
	GOTO       L_num26
	DECFSZ     R12+0, 1
	GOTO       L_num26
	DECFSZ     R11+0, 1
	GOTO       L_num26
	NOP
	NOP
;MyProject.c,24 :: 		x-=x;
	CLRF       _x+0
	CLRF       _x+1
;MyProject.c,25 :: 		}
L_num25:
;MyProject.c,26 :: 		}
L_end_num2:
	RETURN
; end of _num2

_interacao:

;MyProject.c,27 :: 		void interacao(){
;MyProject.c,28 :: 		if( PORTA.BUTAO1 == 1 && PORTA.BUTAO2 == 1){
	BTFSS      PORTA+0, 1
	GOTO       L_interacao9
	BTFSS      PORTA+0, 2
	GOTO       L_interacao9
L__interacao18:
;MyProject.c,29 :: 		PORTB=0b00111010;
	MOVLW      58
	MOVWF      PORTB+0
;MyProject.c,30 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_interacao10:
	DECFSZ     R13+0, 1
	GOTO       L_interacao10
	DECFSZ     R12+0, 1
	GOTO       L_interacao10
	NOP
	NOP
;MyProject.c,31 :: 		PORTB=0b00111001;
	MOVLW      57
	MOVWF      PORTB+0
;MyProject.c,32 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_interacao11:
	DECFSZ     R13+0, 1
	GOTO       L_interacao11
	DECFSZ     R12+0, 1
	GOTO       L_interacao11
	NOP
	NOP
;MyProject.c,33 :: 		PORTB=0b00111011;
	MOVLW      59
	MOVWF      PORTB+0
;MyProject.c,34 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_interacao12:
	DECFSZ     R13+0, 1
	GOTO       L_interacao12
	DECFSZ     R12+0, 1
	GOTO       L_interacao12
	NOP
	NOP
;MyProject.c,35 :: 		PORTB=0b00110111;
	MOVLW      55
	MOVWF      PORTB+0
;MyProject.c,36 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_interacao13:
	DECFSZ     R13+0, 1
	GOTO       L_interacao13
	DECFSZ     R12+0, 1
	GOTO       L_interacao13
	NOP
	NOP
;MyProject.c,37 :: 		PORTB=0b00100111;
	MOVLW      39
	MOVWF      PORTB+0
;MyProject.c,38 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_interacao14:
	DECFSZ     R13+0, 1
	GOTO       L_interacao14
	DECFSZ     R12+0, 1
	GOTO       L_interacao14
	NOP
	NOP
;MyProject.c,39 :: 		PORTB=0b00010111;
	MOVLW      23
	MOVWF      PORTB+0
;MyProject.c,40 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_interacao15:
	DECFSZ     R13+0, 1
	GOTO       L_interacao15
	DECFSZ     R12+0, 1
	GOTO       L_interacao15
	NOP
	NOP
;MyProject.c,41 :: 		}
L_interacao9:
;MyProject.c,42 :: 		}
L_end_interacao:
	RETURN
; end of _interacao

_main:

;MyProject.c,45 :: 		void main() {
;MyProject.c,46 :: 		TRISA.BUTAO1 = 1;
	BSF        TRISA+0, 1
;MyProject.c,47 :: 		TRISA.BUTAO2 = 1;
	BSF        TRISA+0, 2
;MyProject.c,48 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;MyProject.c,49 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;MyProject.c,51 :: 		while(1){
L_main16:
;MyProject.c,53 :: 		interacao();
	CALL       _interacao+0
;MyProject.c,54 :: 		num1();
	CALL       _num1+0
;MyProject.c,55 :: 		num2();
	CALL       _num2+0
;MyProject.c,58 :: 		}
	GOTO       L_main16
;MyProject.c,59 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
