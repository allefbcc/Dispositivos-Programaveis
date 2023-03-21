
_inicio:

;Estacionamento.c,28 :: 		void inicio(){                       //Inicio do programa
;Estacionamento.c,29 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;Estacionamento.c,30 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Estacionamento.c,31 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Estacionamento.c,33 :: 		Lcd_Out(1, 1, "VAGAS TOT.:     16");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_Estacionamento+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_Estacionamento+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Estacionamento.c,34 :: 		Lcd_Out(3, 1, "VAGAS OCUP.:     0");
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_Estacionamento+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_Estacionamento+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Estacionamento.c,35 :: 		}
L_end_inicio:
	RETURN      0
; end of _inicio

_displays:

;Estacionamento.c,37 :: 		void displays(){              //Função do display
;Estacionamento.c,39 :: 		if(conta == 0){ // 16            //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays43
	MOVLW       0
	XORWF       _conta+0, 0 
L__displays43:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays0
;Estacionamento.c,41 :: 		PORTE.RE2 = 1;
	BSF         PORTE+0, 2 
;Estacionamento.c,42 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,43 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,44 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,47 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,48 :: 		PORTA.RA5 = 1;
	BSF         PORTA+0, 5 
;Estacionamento.c,49 :: 		PORTB.RB6 = 1;
	BSF         PORTB+0, 6 
;Estacionamento.c,50 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,52 :: 		LATC.RC2 = 0;                 //Acende o led do estacionameto
	BCF         LATC+0, 2 
;Estacionamento.c,54 :: 		}
L_displays0:
;Estacionamento.c,55 :: 		if(conta == 1){ // 15            //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays44
	MOVLW       1
	XORWF       _conta+0, 0 
L__displays44:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays1
;Estacionamento.c,58 :: 		PORTE.RE2 = 1;
	BSF         PORTE+0, 2 
;Estacionamento.c,59 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,60 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,61 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,64 :: 		PORTA.RA4 = 1;
	BSF         PORTA+0, 4 
;Estacionamento.c,65 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,66 :: 		PORTB.RB6 = 1;
	BSF         PORTB+0, 6 
;Estacionamento.c,67 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,69 :: 		LATC.RC2 = 1;                 //Acende o led do estacionameto
	BSF         LATC+0, 2 
;Estacionamento.c,70 :: 		LATC.RC3 = 0;
	BCF         LATC+0, 3 
;Estacionamento.c,72 :: 		}
L_displays1:
;Estacionamento.c,74 :: 		if(conta == 2){ // 14              //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays45
	MOVLW       2
	XORWF       _conta+0, 0 
L__displays45:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays2
;Estacionamento.c,76 :: 		PORTE.RE2 = 1;
	BSF         PORTE+0, 2 
;Estacionamento.c,77 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,78 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,79 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,81 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,82 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,83 :: 		PORTB.RB6 = 1;
	BSF         PORTB+0, 6 
;Estacionamento.c,84 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,86 :: 		LATC.RC3 = 1;                  //Acende o led do estacionameto
	BSF         LATC+0, 3 
;Estacionamento.c,87 :: 		LATC.RC4 = 0;
	BCF         LATC+0, 4 
;Estacionamento.c,89 :: 		}
L_displays2:
;Estacionamento.c,91 :: 		if(conta == 3){ // 13          //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays46
	MOVLW       3
	XORWF       _conta+0, 0 
L__displays46:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays3
;Estacionamento.c,93 :: 		PORTE.RE2 = 1;
	BSF         PORTE+0, 2 
;Estacionamento.c,94 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,95 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,96 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,98 :: 		PORTA.RA4 = 1;
	BSF         PORTA+0, 4 
;Estacionamento.c,99 :: 		PORTA.RA5 = 1;
	BSF         PORTA+0, 5 
;Estacionamento.c,100 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,101 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,103 :: 		LATC.RC4 = 1;                //Acende o led do estacionameto
	BSF         LATC+0, 4 
;Estacionamento.c,104 :: 		LATC.RC5 = 0;
	BCF         LATC+0, 5 
;Estacionamento.c,106 :: 		}
L_displays3:
;Estacionamento.c,108 :: 		if(conta == 4){ // 12             //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays47
	MOVLW       4
	XORWF       _conta+0, 0 
L__displays47:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays4
;Estacionamento.c,110 :: 		PORTE.RE2 = 1;
	BSF         PORTE+0, 2 
;Estacionamento.c,111 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,112 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,113 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,115 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,116 :: 		PORTA.RA5 = 1;
	BSF         PORTA+0, 5 
;Estacionamento.c,117 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,118 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,120 :: 		LATC.RC5 = 1;             //Acende o led do estacionameto
	BSF         LATC+0, 5 
;Estacionamento.c,121 :: 		LATC.RC6 = 0;
	BCF         LATC+0, 6 
;Estacionamento.c,123 :: 		}
L_displays4:
;Estacionamento.c,125 :: 		if(conta == 5){ // 11            //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays48
	MOVLW       5
	XORWF       _conta+0, 0 
L__displays48:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays5
;Estacionamento.c,127 :: 		PORTE.RE2 = 1;
	BSF         PORTE+0, 2 
;Estacionamento.c,128 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,129 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,130 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,132 :: 		PORTA.RA4 = 1;
	BSF         PORTA+0, 4 
;Estacionamento.c,133 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,134 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,135 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,137 :: 		LATC.RC6 = 1;                //Acende o led do estacionameto
	BSF         LATC+0, 6 
;Estacionamento.c,138 :: 		LATC.RC7 = 0;
	BCF         LATC+0, 7 
;Estacionamento.c,140 :: 		}
L_displays5:
;Estacionamento.c,142 :: 		if(conta == 6){ // 10         //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays49
	MOVLW       6
	XORWF       _conta+0, 0 
L__displays49:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays6
;Estacionamento.c,144 :: 		PORTE.RE2 = 1;
	BSF         PORTE+0, 2 
;Estacionamento.c,145 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,146 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,147 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,149 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,150 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,151 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,152 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,154 :: 		LATC.RC7 = 1;             //Acende o led do estacionameto
	BSF         LATC+0, 7 
;Estacionamento.c,155 :: 		LATD.RD0 = 0;
	BCF         LATD+0, 0 
;Estacionamento.c,157 :: 		}
L_displays6:
;Estacionamento.c,159 :: 		if(conta == 7){ // 09         //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays50
	MOVLW       7
	XORWF       _conta+0, 0 
L__displays50:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays7
;Estacionamento.c,161 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,162 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,163 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,164 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,166 :: 		PORTA.RA4 = 1;
	BSF         PORTA+0, 4 
;Estacionamento.c,167 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,168 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,169 :: 		PORTB.RB7 = 1;
	BSF         PORTB+0, 7 
;Estacionamento.c,171 :: 		LATD.RD0 = 1;                    //Acende o led do estacionameto
	BSF         LATD+0, 0 
;Estacionamento.c,172 :: 		LATD.RD1 = 0;
	BCF         LATD+0, 1 
;Estacionamento.c,174 :: 		}
L_displays7:
;Estacionamento.c,176 :: 		if(conta == 8){ // 08            //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays51
	MOVLW       8
	XORWF       _conta+0, 0 
L__displays51:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays8
;Estacionamento.c,178 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,179 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,180 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,181 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,183 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,184 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,185 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,186 :: 		PORTB.RB7 = 1;
	BSF         PORTB+0, 7 
;Estacionamento.c,188 :: 		LATD.RD1 = 1;                     //Acende o led do estacionameto
	BSF         LATD+0, 1 
;Estacionamento.c,189 :: 		LATD.RD2 = 0;
	BCF         LATD+0, 2 
;Estacionamento.c,191 :: 		}
L_displays8:
;Estacionamento.c,193 :: 		if(conta == 9){ // 07            //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays52
	MOVLW       9
	XORWF       _conta+0, 0 
L__displays52:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays9
;Estacionamento.c,195 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,196 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,197 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,198 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,200 :: 		PORTA.RA4 = 1;
	BSF         PORTA+0, 4 
;Estacionamento.c,201 :: 		PORTA.RA5 = 1;
	BSF         PORTA+0, 5 
;Estacionamento.c,202 :: 		PORTB.RB6 = 1;
	BSF         PORTB+0, 6 
;Estacionamento.c,203 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,205 :: 		LATD.RD2 = 1;                     //Acende o led do estacionameto
	BSF         LATD+0, 2 
;Estacionamento.c,206 :: 		LATD.RD3 = 0;
	BCF         LATD+0, 3 
;Estacionamento.c,208 :: 		}
L_displays9:
;Estacionamento.c,210 :: 		if(conta == 10){ // 06          //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays53
	MOVLW       10
	XORWF       _conta+0, 0 
L__displays53:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays10
;Estacionamento.c,212 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,213 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,214 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,215 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,217 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,218 :: 		PORTA.RA5 = 1;
	BSF         PORTA+0, 5 
;Estacionamento.c,219 :: 		PORTB.RB6 = 1;
	BSF         PORTB+0, 6 
;Estacionamento.c,220 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,222 :: 		LATD.RD3 = 1;
	BSF         LATD+0, 3 
;Estacionamento.c,223 :: 		LATD.RD4 = 0;                     //Acende o led do estacionameto
	BCF         LATD+0, 4 
;Estacionamento.c,225 :: 		}
L_displays10:
;Estacionamento.c,227 :: 		if(conta == 11){ // 05        //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays54
	MOVLW       11
	XORWF       _conta+0, 0 
L__displays54:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays11
;Estacionamento.c,229 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,230 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,231 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,232 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,234 :: 		PORTA.RA4 = 1;
	BSF         PORTA+0, 4 
;Estacionamento.c,235 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,236 :: 		PORTB.RB6 = 1;
	BSF         PORTB+0, 6 
;Estacionamento.c,237 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,239 :: 		LATD.RD4 = 1;                      //Acende o led do estacionameto
	BSF         LATD+0, 4 
;Estacionamento.c,240 :: 		LATD.RD5 = 0;
	BCF         LATD+0, 5 
;Estacionamento.c,242 :: 		}
L_displays11:
;Estacionamento.c,244 :: 		if(conta == 12){ // 04       //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays55
	MOVLW       12
	XORWF       _conta+0, 0 
L__displays55:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays12
;Estacionamento.c,246 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,247 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,248 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,249 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,251 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,252 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,253 :: 		PORTB.RB6 = 1;
	BSF         PORTB+0, 6 
;Estacionamento.c,254 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,256 :: 		LATD.RD5 = 1;                   //Acende o led do estacionameto
	BSF         LATD+0, 5 
;Estacionamento.c,257 :: 		LATD.RD6 = 0;
	BCF         LATD+0, 6 
;Estacionamento.c,259 :: 		}
L_displays12:
;Estacionamento.c,261 :: 		if(conta == 13){ // 03         //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays56
	MOVLW       13
	XORWF       _conta+0, 0 
L__displays56:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays13
;Estacionamento.c,263 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,264 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,265 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,266 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,268 :: 		PORTA.RA4 = 1;
	BSF         PORTA+0, 4 
;Estacionamento.c,269 :: 		PORTA.RA5 = 1;
	BSF         PORTA+0, 5 
;Estacionamento.c,270 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,271 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,273 :: 		LATD.RD6 = 1;                    //Acende o led do estacionameto
	BSF         LATD+0, 6 
;Estacionamento.c,274 :: 		LATD.RD7 = 0;
	BCF         LATD+0, 7 
;Estacionamento.c,276 :: 		}
L_displays13:
;Estacionamento.c,278 :: 		if(conta == 14){ // 02       //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays57
	MOVLW       14
	XORWF       _conta+0, 0 
L__displays57:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays14
;Estacionamento.c,280 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,281 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,282 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,283 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,285 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,286 :: 		PORTA.RA5 = 1;
	BSF         PORTA+0, 5 
;Estacionamento.c,287 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,288 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,290 :: 		LATD.RD7 = 1;                   //Acende o led do estacionameto
	BSF         LATD+0, 7 
;Estacionamento.c,291 :: 		LATE.RE0 = 0;
	BCF         LATE+0, 0 
;Estacionamento.c,293 :: 		}
L_displays14:
;Estacionamento.c,295 :: 		if(conta == 15){ // 01       //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays58
	MOVLW       15
	XORWF       _conta+0, 0 
L__displays58:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays15
;Estacionamento.c,297 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,298 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,299 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,300 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,302 :: 		PORTA.RA4 = 1;
	BSF         PORTA+0, 4 
;Estacionamento.c,303 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,304 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,305 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,307 :: 		LATE.RE0 = 1;                     //Acende o led do estacionameto
	BSF         LATE+0, 0 
;Estacionamento.c,308 :: 		LATE.RE1 = 0;
	BCF         LATE+0, 1 
;Estacionamento.c,310 :: 		}
L_displays15:
;Estacionamento.c,312 :: 		if(conta == 16){ // 00             //Contagem de vagas disponiveis
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__displays59
	MOVLW       16
	XORWF       _conta+0, 0 
L__displays59:
	BTFSS       STATUS+0, 2 
	GOTO        L_displays16
;Estacionamento.c,314 :: 		PORTE.RE2 = 0;
	BCF         PORTE+0, 2 
;Estacionamento.c,315 :: 		PORTA.RA1 = 0;
	BCF         PORTA+0, 1 
;Estacionamento.c,316 :: 		PORTA.RA2 = 0;
	BCF         PORTA+0, 2 
;Estacionamento.c,317 :: 		PORTA.RA3 = 0;
	BCF         PORTA+0, 3 
;Estacionamento.c,319 :: 		PORTA.RA4 = 0;
	BCF         PORTA+0, 4 
;Estacionamento.c,320 :: 		PORTA.RA5 = 0;
	BCF         PORTA+0, 5 
;Estacionamento.c,321 :: 		PORTB.RB6 = 0;
	BCF         PORTB+0, 6 
;Estacionamento.c,322 :: 		PORTB.RB7 = 0;
	BCF         PORTB+0, 7 
;Estacionamento.c,324 :: 		LATE.RE1 = 1;                      //Acende o led do estacionameto
	BSF         LATE+0, 1 
;Estacionamento.c,325 :: 		LATE.RE0 = 1;
	BSF         LATE+0, 0 
;Estacionamento.c,326 :: 		}
L_displays16:
;Estacionamento.c,327 :: 		}
L_end_displays:
	RETURN      0
; end of _displays

_incrementa:

;Estacionamento.c,329 :: 		void incrementa(){                     //Função de Incremento pelo botão
;Estacionamento.c,331 :: 		if(conta >= 0 && conta < 16){          // Condição pra que o valor mostrado no display não passe do limite
	MOVLW       128
	XORWF       _conta+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__incrementa61
	MOVLW       0
	SUBWF       _conta+0, 0 
L__incrementa61:
	BTFSS       STATUS+0, 0 
	GOTO        L_incrementa19
	MOVLW       128
	XORWF       _conta+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__incrementa62
	MOVLW       16
	SUBWF       _conta+0, 0 
L__incrementa62:
	BTFSC       STATUS+0, 0 
	GOTO        L_incrementa19
L__incrementa39:
;Estacionamento.c,333 :: 		if(PORTC.BOTAOI == 0){                 // Condção de incremento do botao
	BTFSC       PORTC+0, 0 
	GOTO        L_incrementa20
;Estacionamento.c,335 :: 		conta++;                               // Variavel conta usada pra incremento
	INFSNZ      _conta+0, 1 
	INCF        _conta+1, 1 
;Estacionamento.c,336 :: 		delay_ms(300);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_incrementa21:
	DECFSZ      R13, 1, 1
	BRA         L_incrementa21
	DECFSZ      R12, 1, 1
	BRA         L_incrementa21
	DECFSZ      R11, 1, 1
	BRA         L_incrementa21
;Estacionamento.c,338 :: 		IntToStr(conta, txt);                  // Função para converter tipo inteiro pra string
	MOVF        _conta+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _conta+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Estacionamento.c,340 :: 		Lcd_Out(3,13, txt);                    // Função que vai mostrar a mensagem convertida no display
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Estacionamento.c,341 :: 		delay_ms(300);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_incrementa22:
	DECFSZ      R13, 1, 1
	BRA         L_incrementa22
	DECFSZ      R12, 1, 1
	BRA         L_incrementa22
	DECFSZ      R11, 1, 1
	BRA         L_incrementa22
;Estacionamento.c,343 :: 		}}}
L_incrementa20:
L_incrementa19:
L_end_incrementa:
	RETURN      0
; end of _incrementa

_decrementa:

;Estacionamento.c,345 :: 		void decrementa(){                    //Função de decremento pelo botão
;Estacionamento.c,347 :: 		if(conta >= 1 && conta < 17){         // Condição pra que o valor mostrado no display não passe do limite
	MOVLW       128
	XORWF       _conta+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decrementa64
	MOVLW       1
	SUBWF       _conta+0, 0 
L__decrementa64:
	BTFSS       STATUS+0, 0 
	GOTO        L_decrementa25
	MOVLW       128
	XORWF       _conta+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decrementa65
	MOVLW       17
	SUBWF       _conta+0, 0 
L__decrementa65:
	BTFSC       STATUS+0, 0 
	GOTO        L_decrementa25
L__decrementa40:
;Estacionamento.c,349 :: 		if(PORTC.BOTAOD == 0){                // Condção de decremento do botao
	BTFSC       PORTC+0, 1 
	GOTO        L_decrementa26
;Estacionamento.c,352 :: 		conta--;                               // Variavel conta usada pra decremento
	MOVLW       1
	SUBWF       _conta+0, 1 
	MOVLW       0
	SUBWFB      _conta+1, 1 
;Estacionamento.c,353 :: 		delay_ms(300);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_decrementa27:
	DECFSZ      R13, 1, 1
	BRA         L_decrementa27
	DECFSZ      R12, 1, 1
	BRA         L_decrementa27
	DECFSZ      R11, 1, 1
	BRA         L_decrementa27
;Estacionamento.c,355 :: 		IntToStr(conta, txt);                   // Função para converter tipo inteiro pra string
	MOVF        _conta+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _conta+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Estacionamento.c,357 :: 		Lcd_Out(3,13, txt);                     // Função que vai mostrar a mensagem convertida no display
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Estacionamento.c,358 :: 		delay_ms(10);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_decrementa28:
	DECFSZ      R13, 1, 1
	BRA         L_decrementa28
	DECFSZ      R12, 1, 1
	BRA         L_decrementa28
	NOP
	NOP
;Estacionamento.c,360 :: 		}}}
L_decrementa26:
L_decrementa25:
L_end_decrementa:
	RETURN      0
; end of _decrementa

_lotado:

;Estacionamento.c,362 :: 		void lotado(){                          //Função criada para lotado
;Estacionamento.c,364 :: 		Lcd_Out(4, 1, "LOTADO");
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_Estacionamento+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_Estacionamento+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Estacionamento.c,365 :: 		Lcd_Out(2, 1, "        ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_Estacionamento+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_Estacionamento+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Estacionamento.c,367 :: 		Delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_lotado29:
	DECFSZ      R13, 1, 1
	BRA         L_lotado29
	DECFSZ      R12, 1, 1
	BRA         L_lotado29
	DECFSZ      R11, 1, 1
	BRA         L_lotado29
	NOP
	NOP
;Estacionamento.c,368 :: 		lcd_cmd(_LCD_TURN_OFF);
	MOVLW       8
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Estacionamento.c,369 :: 		Delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_lotado30:
	DECFSZ      R13, 1, 1
	BRA         L_lotado30
	DECFSZ      R12, 1, 1
	BRA         L_lotado30
	DECFSZ      R11, 1, 1
	BRA         L_lotado30
	NOP
	NOP
;Estacionamento.c,370 :: 		lcd_cmd(_LCD_TURN_ON);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Estacionamento.c,371 :: 		Delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_lotado31:
	DECFSZ      R13, 1, 1
	BRA         L_lotado31
	DECFSZ      R12, 1, 1
	BRA         L_lotado31
	DECFSZ      R11, 1, 1
	BRA         L_lotado31
	NOP
	NOP
;Estacionamento.c,373 :: 		}
L_end_lotado:
	RETURN      0
; end of _lotado

_vaga:

;Estacionamento.c,375 :: 		void vaga(){
;Estacionamento.c,376 :: 		Lcd_Out(2, 1, "TEM VAGA");            //Função criada para vaga
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_Estacionamento+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_Estacionamento+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Estacionamento.c,377 :: 		Lcd_Out(4, 1, "      ");
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_Estacionamento+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_Estacionamento+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Estacionamento.c,378 :: 		}
L_end_vaga:
	RETURN      0
; end of _vaga

_main:

;Estacionamento.c,381 :: 		void main() {
;Estacionamento.c,384 :: 		TRISB = 0;                            //Define PORTB como saida
	CLRF        TRISB+0 
;Estacionamento.c,385 :: 		PORTB = 0;                            //Inicia desligado
	CLRF        PORTB+0 
;Estacionamento.c,387 :: 		TRISC.BOTAOI = 1;
	BSF         TRISC+0, 0 
;Estacionamento.c,388 :: 		TRISC.BOTAOD = 1;                     //Define botões como entrada
	BSF         TRISC+0, 1 
;Estacionamento.c,390 :: 		TRISC.RC2 = 0; // 1
	BCF         TRISC+0, 2 
;Estacionamento.c,391 :: 		TRISC.RC3 = 0; // 2
	BCF         TRISC+0, 3 
;Estacionamento.c,392 :: 		TRISC.RC4 = 0; // 3
	BCF         TRISC+0, 4 
;Estacionamento.c,393 :: 		TRISC.RC5 = 0; // 4                   //Define como saida
	BCF         TRISC+0, 5 
;Estacionamento.c,394 :: 		TRISC.RC6 = 0; // 5
	BCF         TRISC+0, 6 
;Estacionamento.c,395 :: 		TRISC.RC7 = 0; // 6
	BCF         TRISC+0, 7 
;Estacionamento.c,397 :: 		PORTC.BOTAOI = 0;
	BCF         PORTC+0, 0 
;Estacionamento.c,398 :: 		PORTC.BOTAOD = 0;                     //Inicia os botões sem estar pressionado
	BCF         PORTC+0, 1 
;Estacionamento.c,400 :: 		PORTC.RC2 = 0; // 1
	BCF         PORTC+0, 2 
;Estacionamento.c,401 :: 		PORTC.RC3 = 0; // 2
	BCF         PORTC+0, 3 
;Estacionamento.c,402 :: 		PORTC.RC4 = 0; // 3
	BCF         PORTC+0, 4 
;Estacionamento.c,403 :: 		PORTC.RC5 = 0; // 4
	BCF         PORTC+0, 5 
;Estacionamento.c,404 :: 		PORTC.RC6 = 0; // 5                       //Inicia os leds desligados
	BCF         PORTC+0, 6 
;Estacionamento.c,405 :: 		PORTC.RC7 = 0; // 6
	BCF         PORTC+0, 7 
;Estacionamento.c,407 :: 		TRISD.RD0 = 0;
	BCF         TRISD+0, 0 
;Estacionamento.c,408 :: 		TRISD.RD1 = 0;
	BCF         TRISD+0, 1 
;Estacionamento.c,409 :: 		TRISD.RD2 = 0;
	BCF         TRISD+0, 2 
;Estacionamento.c,410 :: 		TRISD.RD3 = 0;
	BCF         TRISD+0, 3 
;Estacionamento.c,411 :: 		TRISD.RD4 = 0;                             //Define como saida
	BCF         TRISD+0, 4 
;Estacionamento.c,412 :: 		TRISD.RD5 = 0;
	BCF         TRISD+0, 5 
;Estacionamento.c,413 :: 		TRISD.RD6 = 0;
	BCF         TRISD+0, 6 
;Estacionamento.c,414 :: 		TRISD.RD7 = 0;
	BCF         TRISD+0, 7 
;Estacionamento.c,416 :: 		PORTD.RD0 = 0;
	BCF         PORTD+0, 0 
;Estacionamento.c,417 :: 		PORTD.RD1 = 0;
	BCF         PORTD+0, 1 
;Estacionamento.c,418 :: 		PORTD.RD2 = 0;
	BCF         PORTD+0, 2 
;Estacionamento.c,419 :: 		PORTD.RD3 = 0;
	BCF         PORTD+0, 3 
;Estacionamento.c,420 :: 		PORTD.RD4 = 0;                            //Inicia os leds desligados
	BCF         PORTD+0, 4 
;Estacionamento.c,421 :: 		PORTD.RD5 = 0;
	BCF         PORTD+0, 5 
;Estacionamento.c,422 :: 		PORTD.RD6 = 0;
	BCF         PORTD+0, 6 
;Estacionamento.c,423 :: 		PORTD.RD7 = 0;
	BCF         PORTD+0, 7 
;Estacionamento.c,425 :: 		TRISE.RE0 = 0; // 15
	BCF         TRISE+0, 0 
;Estacionamento.c,426 :: 		TRISE.RE1 = 0; // 16                     //Define como saida
	BCF         TRISE+0, 1 
;Estacionamento.c,427 :: 		TRISE.RE2 = 0;
	BCF         TRISE+0, 2 
;Estacionamento.c,429 :: 		PORTE.RE0 = 0; //15                     //Inicia os leds desligados
	BCF         PORTE+0, 0 
;Estacionamento.c,430 :: 		PORTE.RE1 = 0; // 16
	BCF         PORTE+0, 1 
;Estacionamento.c,431 :: 		PORTE.RE2 = 0;                         //Inicia display de 7seg desligado
	BCF         PORTE+0, 2 
;Estacionamento.c,434 :: 		TRISA.RA1 = 0;
	BCF         TRISA+0, 1 
;Estacionamento.c,435 :: 		TRISA.RA3 = 0;                        //Define como saida
	BCF         TRISA+0, 3 
;Estacionamento.c,436 :: 		TRISA.RA4 = 0;
	BCF         TRISA+0, 4 
;Estacionamento.c,437 :: 		TRISA.RA5 = 0;
	BCF         TRISA+0, 5 
;Estacionamento.c,439 :: 		TRISA.RA0 = 0;                        //Pino do Led de atenção do estacionamento definido como saída
	BCF         TRISA+0, 0 
;Estacionamento.c,441 :: 		inicio();           // Função de inicio do display
	CALL        _inicio+0, 0
;Estacionamento.c,444 :: 		while(1){                             //Condição verdadeira
L_main32:
;Estacionamento.c,447 :: 		displays();
	CALL        _displays+0, 0
;Estacionamento.c,448 :: 		incrementa();                        //chamando as funções criadas para os displays e botões
	CALL        _incrementa+0, 0
;Estacionamento.c,449 :: 		decrementa();
	CALL        _decrementa+0, 0
;Estacionamento.c,452 :: 		if(conta < 16){                      // Condição pra chamar a função vaga assim q liga o display
	MOVLW       128
	XORWF       _conta+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main69
	MOVLW       16
	SUBWF       _conta+0, 0 
L__main69:
	BTFSC       STATUS+0, 0 
	GOTO        L_main34
;Estacionamento.c,454 :: 		vaga();
	CALL        _vaga+0, 0
;Estacionamento.c,457 :: 		}else if(conta == 16){               // Condição pra chamar a função lotado assim q atinge o numero máximo de caroos no display
	GOTO        L_main35
L_main34:
	MOVLW       0
	XORWF       _conta+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main70
	MOVLW       16
	XORWF       _conta+0, 0 
L__main70:
	BTFSS       STATUS+0, 2 
	GOTO        L_main36
;Estacionamento.c,458 :: 		lotado();
	CALL        _lotado+0, 0
;Estacionamento.c,462 :: 		}
L_main36:
L_main35:
;Estacionamento.c,463 :: 		Delay_ms (200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main37:
	DECFSZ      R13, 1, 1
	BRA         L_main37
	DECFSZ      R12, 1, 1
	BRA         L_main37
	DECFSZ      R11, 1, 1
	BRA         L_main37
	NOP
;Estacionamento.c,464 :: 		LATA.RA0 = !LATA.RA0;          //Inverte o estado do LED, fazendo-o piscar dentro do laço
	BTG         LATA+0, 0 
;Estacionamento.c,465 :: 		Delay_ms (200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main38:
	DECFSZ      R13, 1, 1
	BRA         L_main38
	DECFSZ      R12, 1, 1
	BRA         L_main38
	DECFSZ      R11, 1, 1
	BRA         L_main38
	NOP
;Estacionamento.c,469 :: 		}
	GOTO        L_main32
;Estacionamento.c,471 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
