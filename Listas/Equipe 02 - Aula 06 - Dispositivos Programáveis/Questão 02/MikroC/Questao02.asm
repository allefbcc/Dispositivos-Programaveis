
_main:

;Questao02.c,1 :: 		void main(){
;Questao02.c,3 :: 		TRISB = 0;
	CLRF       TRISB+0
;Questao02.c,4 :: 		TRISD = 0;
	CLRF       TRISD+0
;Questao02.c,6 :: 		ADCON0.ADON = 1;      //Habilita o conversor AD
	BSF        ADCON0+0, 0
;Questao02.c,7 :: 		ADCON0.ADFM = 0;      // Justifica a Esquerda
	BCF        ADCON0+0, 7
;Questao02.c,10 :: 		while(1) {                                //Inicia loop infinito
L_main0:
;Questao02.c,11 :: 		ADCON0.GO = 1;                               //Inicia a conversao
	BSF        ADCON0+0, 2
;Questao02.c,12 :: 		while (!ADCON0.GO_DONE) {                  //Aguarda o fim da conversao
L_main2:
	BTFSC      ADCON0+0, 2
	GOTO       L_main3
;Questao02.c,13 :: 		}
	GOTO       L_main2
L_main3:
;Questao02.c,14 :: 		PORTB = ADRESH;                          //Transfere o valor para porta B
	MOVF       ADRESH+0, 0
	MOVWF      PORTB+0
;Questao02.c,15 :: 		PORTD = ADRESL;                                //Transfere valor para porta C
	MOVF       ADRESL+0, 0
	MOVWF      PORTD+0
;Questao02.c,16 :: 		Delay_ms (100);                        // Atraso de 100 ms
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;Questao02.c,17 :: 		}
	GOTO       L_main0
;Questao02.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
