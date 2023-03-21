
_main:

;Questao01.c,23 :: 		void main() {
;Questao01.c,25 :: 		TRISA.BOTAO = 1; //DEFINE O BOTAO COMO ENTRADA
	BSF        TRISA+0, 0
;Questao01.c,26 :: 		TRISA.RA1 = 0;// //DEFINE O LED COMO SAÍDA
	BCF        TRISA+0, 1
;Questao01.c,28 :: 		PORTA.BOTAO = 0; //DEFINE O BOTAO COMO DESLIGADO
	BCF        PORTA+0, 0
;Questao01.c,29 :: 		PORTA.RA1 = 0;   //DEFINE O LED COMO DESLIGADO
	BCF        PORTA+0, 1
;Questao01.c,32 :: 		TRISB = 0;       //DEFINE O POTRB COMO SAÍDA
	CLRF       TRISB+0
;Questao01.c,33 :: 		PORTB = 0;  //DEFINE O POTRB COMO DESLIGADO
	CLRF       PORTB+0
;Questao01.c,35 :: 		Lcd_Init(); //INICIA O LCD
	CALL       _Lcd_Init+0
;Questao01.c,36 :: 		Lcd_Cmd(_LCD_CLEAR); //LIMPA A TELA DO LCD
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Questao01.c,37 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); //DESLIGA O CURSOR DO LCD
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Questao01.c,39 :: 		while(1){
L_main0:
;Questao01.c,41 :: 		if(PORTA.BOTAO == 0){
	BTFSC      PORTA+0, 0
	GOTO       L_main2
;Questao01.c,43 :: 		PORTA.RA1 = 1; //LIGA O LED
	BSF        PORTA+0, 1
;Questao01.c,44 :: 		lcd_out(1,1, "LED ON "); // MOSTRA MENSAGEN ON NA TELA DO LCD
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Questao01+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Questao01.c,45 :: 		Delay_ms(200); // DÁ UM DELAY PRA QUE DER UM TEMPO DE VISUALIZAR A MENSAGEM NO DISPLAY
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Questao01.c,47 :: 		}else{
	GOTO       L_main4
L_main2:
;Questao01.c,49 :: 		PORTA.RA1 = 0; // DESLIGA O LED
	BCF        PORTA+0, 1
;Questao01.c,50 :: 		lcd_out(1,1, "LED OFF"); //DÁ UM DELAY PRA QUE DER UM TEMPO DE VISUALIZAR A MENSAGEM NO DISPLAY
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Questao01+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Questao01.c,53 :: 		}
L_main4:
;Questao01.c,56 :: 		}
	GOTO       L_main0
;Questao01.c,58 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
