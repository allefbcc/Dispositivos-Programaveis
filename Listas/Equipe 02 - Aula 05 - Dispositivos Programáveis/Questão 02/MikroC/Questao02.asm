
_main:

;Questao02.c,24 :: 		void main() {
;Questao02.c,28 :: 		TRISA.BOTAO = 1; //DEFINE O BOTAO COMO ENTRADA
	BSF        TRISA+0, 0
;Questao02.c,29 :: 		TRISA.BOTAO2 = 1;//DEFINE O BOTAO2 COMO ENTRADA
	BSF        TRISA+0, 1
;Questao02.c,31 :: 		PORTA.BOTAO = 0; //DEFINE O BOTAO COMO DESLIGADO
	BCF        PORTA+0, 0
;Questao02.c,32 :: 		PORTA.BOTAO2 = 0;   //DEFINE O BOTAO2 COMO DESLIGADO
	BCF        PORTA+0, 1
;Questao02.c,35 :: 		TRISB = 0;       //DEFINE O POTRB COMO SAÍDA
	CLRF       TRISB+0
;Questao02.c,36 :: 		PORTB = 0;  //DEFINE O POTRB COMO DESLIGADO
	CLRF       PORTB+0
;Questao02.c,38 :: 		Lcd_Init(); //INICIA O LCD
	CALL       _Lcd_Init+0
;Questao02.c,39 :: 		Lcd_Cmd(_LCD_CLEAR); //LIMPA A TELA DO LCD
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Questao02.c,40 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); //DESLIGA O CURSOR DO LCD
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Questao02.c,41 :: 		lcd_out(1,3, "IFPE"); // MOSTRA A MENSAGEM IFPE NA TELA DO DISPLAY
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Questao02+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Questao02.c,43 :: 		while(1){
L_main0:
;Questao02.c,45 :: 		if(PORTA.BOTAO == 0){
	BTFSC      PORTA+0, 0
	GOTO       L_main2
;Questao02.c,47 :: 		for(desloca = 1; desloca <= 1; desloca++){ //COMANDO DE REPETIÇÃO FINITO
	MOVLW      1
	MOVWF      main_desloca_L0+0
	MOVLW      0
	MOVWF      main_desloca_L0+1
L_main3:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_desloca_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       main_desloca_L0+0, 0
	SUBLW      1
L__main13:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;Questao02.c,48 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT); // MOVE A MENSAGEM DO DISPLAY PRA DIREITA
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Questao02.c,49 :: 		Delay_ms(100);  // AGUARDA 100 ms
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
;Questao02.c,47 :: 		for(desloca = 1; desloca <= 1; desloca++){ //COMANDO DE REPETIÇÃO FINITO
	INCF       main_desloca_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_desloca_L0+1, 1
;Questao02.c,50 :: 		}
	GOTO       L_main3
L_main4:
;Questao02.c,55 :: 		}if(PORTA.BOTAO2 == 0){
L_main2:
	BTFSC      PORTA+0, 1
	GOTO       L_main7
;Questao02.c,57 :: 		for(desloca = 1; desloca <= 1; desloca++){ //COMANDO DE REPETIÇÃO FINITO
	MOVLW      1
	MOVWF      main_desloca_L0+0
	MOVLW      0
	MOVWF      main_desloca_L0+1
L_main8:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_desloca_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       main_desloca_L0+0, 0
	SUBLW      1
L__main14:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;Questao02.c,58 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT); //MOVE A MENSAGEM DO DISPLAY PRA ESQUERDA
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Questao02.c,59 :: 		Delay_ms(100); // AGUARDA 100 ms
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
;Questao02.c,57 :: 		for(desloca = 1; desloca <= 1; desloca++){ //COMANDO DE REPETIÇÃO FINITO
	INCF       main_desloca_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_desloca_L0+1, 1
;Questao02.c,60 :: 		}
	GOTO       L_main8
L_main9:
;Questao02.c,63 :: 		}
L_main7:
;Questao02.c,66 :: 		}
	GOTO       L_main0
;Questao02.c,68 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
