
_ConfiguraTimer:

;Questao02.c,1 :: 		void ConfiguraTimer(){
;Questao02.c,2 :: 		T0CON = 0b00000110;
	MOVLW       6
	MOVWF       T0CON+0 
;Questao02.c,3 :: 		TMR0L = 0xF7;
	MOVLW       247
	MOVWF       TMR0L+0 
;Questao02.c,4 :: 		TMR0H = 0xC2;
	MOVLW       194
	MOVWF       TMR0H+0 
;Questao02.c,5 :: 		INTCON.TMR0IF = 0;
	BCF         INTCON+0, 2 
;Questao02.c,6 :: 		T0CON.TMR0ON = 1;
	BSF         T0CON+0, 7 
;Questao02.c,7 :: 		}
L_end_ConfiguraTimer:
	RETURN      0
; end of _ConfiguraTimer

_main:

;Questao02.c,10 :: 		void main() {
;Questao02.c,12 :: 		int cont = 0;
	CLRF        main_cont_L0+0 
	CLRF        main_cont_L0+1 
;Questao02.c,13 :: 		TRISD = 0;
	CLRF        TRISD+0 
;Questao02.c,14 :: 		PORTD = 0;
	CLRF        PORTD+0 
;Questao02.c,16 :: 		ConfiguraTimer();
	CALL        _ConfiguraTimer+0, 0
;Questao02.c,18 :: 		while(1){
L_main0:
;Questao02.c,20 :: 		if(INTCON.TMR0IF == 1){
	BTFSS       INTCON+0, 2 
	GOTO        L_main2
;Questao02.c,22 :: 		TMR0L = 0xF7;
	MOVLW       247
	MOVWF       TMR0L+0 
;Questao02.c,23 :: 		TMR0H = 0xC2;
	MOVLW       194
	MOVWF       TMR0H+0 
;Questao02.c,24 :: 		INTCON.TMR0IF = 0;
	BCF         INTCON+0, 2 
;Questao02.c,25 :: 		cont++;
	INFSNZ      main_cont_L0+0, 1 
	INCF        main_cont_L0+1, 1 
;Questao02.c,27 :: 		if(cont == 5){
	MOVLW       0
	XORWF       main_cont_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main6
	MOVLW       5
	XORWF       main_cont_L0+0, 0 
L__main6:
	BTFSS       STATUS+0, 2 
	GOTO        L_main3
;Questao02.c,29 :: 		PORTD.RD0=~LATD.RD0;
	BTFSC       LATD+0, 0 
	GOTO        L__main7
	BSF         PORTD+0, 0 
	GOTO        L__main8
L__main7:
	BCF         PORTD+0, 0 
L__main8:
;Questao02.c,30 :: 		INTCON.TMR0IF = 0;
	BCF         INTCON+0, 2 
;Questao02.c,31 :: 		cont = 0;
	CLRF        main_cont_L0+0 
	CLRF        main_cont_L0+1 
;Questao02.c,33 :: 		}
L_main3:
;Questao02.c,35 :: 		}
L_main2:
;Questao02.c,36 :: 		}
	GOTO        L_main0
;Questao02.c,38 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
