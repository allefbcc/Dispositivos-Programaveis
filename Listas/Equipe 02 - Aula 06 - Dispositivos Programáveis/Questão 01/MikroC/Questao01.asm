
_main:

;Questao01.c,7 :: 		void main() {
;Questao01.c,9 :: 		ADCON0 = 0b10000001;   // Configura o registrador ADCON0
	MOVLW      129
	MOVWF      ADCON0+0
;Questao01.c,10 :: 		ADCON1 = 0b01001110;  // Configura o registrador ADCON1
	MOVLW      78
	MOVWF      ADCON1+0
;Questao01.c,12 :: 		TRISB = 0;  // Define o PORTB como saída
	CLRF       TRISB+0
;Questao01.c,13 :: 		PORTB = 0;  // Define o PORTB como desligado
	CLRF       PORTB+0
;Questao01.c,15 :: 		while(1){
L_main0:
;Questao01.c,17 :: 		leitor = ADC_READ(0); // Faz a leitura do pino A0 e armazena o valor na variável leitor
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _leitor+0
	MOVF       R0+1, 0
	MOVWF      _leitor+1
;Questao01.c,19 :: 		if(leitor > 0){   // Condição para não ascender nenhum LED enquanto for maior que zero
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVF       R0+0, 0
	SUBLW      0
L__main8:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;Questao01.c,21 :: 		LED1 = 0;
	BCF        PORTB+0, 2
;Questao01.c,22 :: 		LED2 = 0;       // LEDS desligados
	BCF        PORTB+0, 1
;Questao01.c,23 :: 		LED3 = 0;
	BCF        PORTB+0, 0
;Questao01.c,25 :: 		}
L_main2:
;Questao01.c,27 :: 		if(leitor > 205){ // Condição para ascender o LED1 quanto atingir o valor que corresponde a 1V
	MOVF       _leitor+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVF       _leitor+0, 0
	SUBLW      205
L__main9:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;Questao01.c,29 :: 		LED1 = 1;
	BSF        PORTB+0, 2
;Questao01.c,30 :: 		LED2 = 0;                // Só o LED1 ligado
	BCF        PORTB+0, 1
;Questao01.c,31 :: 		LED3 = 0;
	BCF        PORTB+0, 0
;Questao01.c,33 :: 		}
L_main3:
;Questao01.c,35 :: 		if(leitor > 614){ // Condição para ascender o LED2 quanto atingir o valor que corresponde a 3V
	MOVF       _leitor+1, 0
	SUBLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVF       _leitor+0, 0
	SUBLW      102
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;Questao01.c,37 :: 		LED1 = 1;
	BSF        PORTB+0, 2
;Questao01.c,38 :: 		LED2 = 1;        // LED1 e LED2 ligados
	BSF        PORTB+0, 1
;Questao01.c,39 :: 		LED3 = 0;
	BCF        PORTB+0, 0
;Questao01.c,41 :: 		}
L_main4:
;Questao01.c,43 :: 		if(leitor > 819){ // Condição para ascender o LED3 quanto atingir o valor que corresponde a 4V
	MOVF       _leitor+1, 0
	SUBLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       _leitor+0, 0
	SUBLW      51
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;Questao01.c,45 :: 		LED1 = 1;
	BSF        PORTB+0, 2
;Questao01.c,46 :: 		LED2 = 1;        // LED1, LED2 e LED3 ligados
	BSF        PORTB+0, 1
;Questao01.c,47 :: 		LED3 = 1;
	BSF        PORTB+0, 0
;Questao01.c,49 :: 		}
L_main5:
;Questao01.c,51 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;Questao01.c,53 :: 		}
	GOTO       L_main0
;Questao01.c,55 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
