
_display1:

;Questao04.c,4 :: 		void display1(char cont){
;Questao04.c,6 :: 		switch(cont){
	GOTO       L_display10
;Questao04.c,7 :: 		case 0:
L_display12:
;Questao04.c,8 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Questao04.c,9 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Questao04.c,10 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Questao04.c,11 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Questao04.c,12 :: 		break;
	GOTO       L_display11
;Questao04.c,14 :: 		case 1:
L_display13:
;Questao04.c,15 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;Questao04.c,16 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Questao04.c,17 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Questao04.c,18 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Questao04.c,19 :: 		break;
	GOTO       L_display11
;Questao04.c,21 :: 		case 2:
L_display14:
;Questao04.c,22 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Questao04.c,23 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;Questao04.c,24 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Questao04.c,25 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Questao04.c,26 :: 		break;
	GOTO       L_display11
;Questao04.c,28 :: 		case 3:
L_display15:
;Questao04.c,29 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;Questao04.c,30 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;Questao04.c,31 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Questao04.c,32 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Questao04.c,33 :: 		break;
	GOTO       L_display11
;Questao04.c,35 :: 		case 4:
L_display16:
;Questao04.c,36 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Questao04.c,37 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Questao04.c,38 :: 		PORTB.RB2 = 1;
	BSF        PORTB+0, 2
;Questao04.c,39 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Questao04.c,40 :: 		break;
	GOTO       L_display11
;Questao04.c,42 :: 		case 5:
L_display17:
;Questao04.c,43 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;Questao04.c,44 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Questao04.c,45 :: 		PORTB.RB2 = 1;
	BSF        PORTB+0, 2
;Questao04.c,46 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Questao04.c,47 :: 		break;
	GOTO       L_display11
;Questao04.c,49 :: 		case 6:
L_display18:
;Questao04.c,50 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Questao04.c,51 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;Questao04.c,52 :: 		PORTB.RB2 = 1;
	BSF        PORTB+0, 2
;Questao04.c,53 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Questao04.c,54 :: 		break;
	GOTO       L_display11
;Questao04.c,56 :: 		case 7:
L_display19:
;Questao04.c,57 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;Questao04.c,58 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;Questao04.c,59 :: 		PORTB.RB2 = 1;
	BSF        PORTB+0, 2
;Questao04.c,60 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Questao04.c,61 :: 		break;
	GOTO       L_display11
;Questao04.c,63 :: 		case 8:
L_display110:
;Questao04.c,64 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Questao04.c,65 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Questao04.c,66 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Questao04.c,67 :: 		PORTB.RB3 = 1;
	BSF        PORTB+0, 3
;Questao04.c,68 :: 		break;
	GOTO       L_display11
;Questao04.c,70 :: 		case 9:
L_display111:
;Questao04.c,71 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;Questao04.c,72 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Questao04.c,73 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Questao04.c,74 :: 		PORTB.RB3 = 1;
	BSF        PORTB+0, 3
;Questao04.c,75 :: 		break;
	GOTO       L_display11
;Questao04.c,76 :: 		}
L_display10:
	MOVF       FARG_display1_cont+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_display12
	MOVF       FARG_display1_cont+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_display13
	MOVF       FARG_display1_cont+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_display14
	MOVF       FARG_display1_cont+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_display15
	MOVF       FARG_display1_cont+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_display16
	MOVF       FARG_display1_cont+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_display17
	MOVF       FARG_display1_cont+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_display18
	MOVF       FARG_display1_cont+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_display19
	MOVF       FARG_display1_cont+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_display110
	MOVF       FARG_display1_cont+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_display111
L_display11:
;Questao04.c,77 :: 		}
L_end_display1:
	RETURN
; end of _display1

_display2:

;Questao04.c,79 :: 		void display2(char cont){
;Questao04.c,80 :: 		switch(cont){
	GOTO       L_display212
;Questao04.c,81 :: 		case 0:
L_display214:
;Questao04.c,82 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Questao04.c,83 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Questao04.c,84 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;Questao04.c,85 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Questao04.c,86 :: 		break;
	GOTO       L_display213
;Questao04.c,88 :: 		case 1:
L_display215:
;Questao04.c,89 :: 		PORTB.RB4 = 1;
	BSF        PORTB+0, 4
;Questao04.c,90 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Questao04.c,91 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;Questao04.c,92 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Questao04.c,93 :: 		break;
	GOTO       L_display213
;Questao04.c,95 :: 		case 2:
L_display216:
;Questao04.c,96 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Questao04.c,97 :: 		PORTB.RB5 = 1;
	BSF        PORTB+0, 5
;Questao04.c,98 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;Questao04.c,99 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Questao04.c,100 :: 		break;
	GOTO       L_display213
;Questao04.c,102 :: 		case 3:
L_display217:
;Questao04.c,103 :: 		PORTB.RB4 = 1;
	BSF        PORTB+0, 4
;Questao04.c,104 :: 		PORTB.RB5 = 1;
	BSF        PORTB+0, 5
;Questao04.c,105 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;Questao04.c,106 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Questao04.c,107 :: 		break;
	GOTO       L_display213
;Questao04.c,109 :: 		case 4:
L_display218:
;Questao04.c,110 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Questao04.c,111 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Questao04.c,112 :: 		PORTB.RB6 = 1;
	BSF        PORTB+0, 6
;Questao04.c,113 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Questao04.c,114 :: 		break;
	GOTO       L_display213
;Questao04.c,116 :: 		case 5:
L_display219:
;Questao04.c,117 :: 		PORTB.RB4 = 1;
	BSF        PORTB+0, 4
;Questao04.c,118 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Questao04.c,119 :: 		PORTB.RB6 = 1;
	BSF        PORTB+0, 6
;Questao04.c,120 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Questao04.c,121 :: 		break;
	GOTO       L_display213
;Questao04.c,123 :: 		case 6:
L_display220:
;Questao04.c,124 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Questao04.c,125 :: 		PORTB.RB5 = 1;
	BSF        PORTB+0, 5
;Questao04.c,126 :: 		PORTB.RB6 = 1;
	BSF        PORTB+0, 6
;Questao04.c,127 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Questao04.c,128 :: 		break;
	GOTO       L_display213
;Questao04.c,130 :: 		case 7:
L_display221:
;Questao04.c,131 :: 		PORTB.RB4 = 1;
	BSF        PORTB+0, 4
;Questao04.c,132 :: 		PORTB.RB5 = 1;
	BSF        PORTB+0, 5
;Questao04.c,133 :: 		PORTB.RB6 = 1;
	BSF        PORTB+0, 6
;Questao04.c,134 :: 		PORTB.RB7 = 0;
	BCF        PORTB+0, 7
;Questao04.c,135 :: 		break;
	GOTO       L_display213
;Questao04.c,137 :: 		case 8:
L_display222:
;Questao04.c,138 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Questao04.c,139 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Questao04.c,140 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;Questao04.c,141 :: 		PORTB.RB7 = 1;
	BSF        PORTB+0, 7
;Questao04.c,142 :: 		break;
	GOTO       L_display213
;Questao04.c,144 :: 		case 9:
L_display223:
;Questao04.c,145 :: 		PORTB.RB4 = 1;
	BSF        PORTB+0, 4
;Questao04.c,146 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Questao04.c,147 :: 		PORTB.RB6 = 0;
	BCF        PORTB+0, 6
;Questao04.c,148 :: 		PORTB.RB7 = 1;
	BSF        PORTB+0, 7
;Questao04.c,149 :: 		break;
	GOTO       L_display213
;Questao04.c,150 :: 		}
L_display212:
	MOVF       FARG_display2_cont+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_display214
	MOVF       FARG_display2_cont+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_display215
	MOVF       FARG_display2_cont+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_display216
	MOVF       FARG_display2_cont+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_display217
	MOVF       FARG_display2_cont+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_display218
	MOVF       FARG_display2_cont+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_display219
	MOVF       FARG_display2_cont+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_display220
	MOVF       FARG_display2_cont+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_display221
	MOVF       FARG_display2_cont+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_display222
	MOVF       FARG_display2_cont+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_display223
L_display213:
;Questao04.c,152 :: 		}
L_end_display2:
	RETURN
; end of _display2

_main:

;Questao04.c,154 :: 		void main() {
;Questao04.c,156 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;Questao04.c,157 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Questao04.c,159 :: 		while(1){
L_main24:
;Questao04.c,161 :: 		contador2++;
	INCF       _contador2+0, 1
;Questao04.c,163 :: 		display1(contador1);
	MOVF       _contador1+0, 0
	MOVWF      FARG_display1_cont+0
	CALL       _display1+0
;Questao04.c,164 :: 		display2(contador2);
	MOVF       _contador2+0, 0
	MOVWF      FARG_display2_cont+0
	CALL       _display2+0
;Questao04.c,167 :: 		if(contador2 == 10){
	MOVF       _contador2+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_main26
;Questao04.c,169 :: 		contador1++;
	INCF       _contador1+0, 1
;Questao04.c,170 :: 		contador2 = 0;
	CLRF       _contador2+0
;Questao04.c,172 :: 		display1(contador1);
	MOVF       _contador1+0, 0
	MOVWF      FARG_display1_cont+0
	CALL       _display1+0
;Questao04.c,173 :: 		display2(contador2);
	MOVF       _contador2+0, 0
	MOVWF      FARG_display2_cont+0
	CALL       _display2+0
;Questao04.c,175 :: 		if(contador1 == 10){
	MOVF       _contador1+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_main27
;Questao04.c,177 :: 		contador1 = 0;
	CLRF       _contador1+0
;Questao04.c,178 :: 		display1(contador1);
	CLRF       FARG_display1_cont+0
	CALL       _display1+0
;Questao04.c,179 :: 		}
L_main27:
;Questao04.c,180 :: 		}
L_main26:
;Questao04.c,182 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	DECFSZ     R11+0, 1
	GOTO       L_main28
	NOP
	NOP
;Questao04.c,183 :: 		}
	GOTO       L_main24
;Questao04.c,185 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
