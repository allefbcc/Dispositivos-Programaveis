#line 1 "C:/Users/allef/Desktop/Estacionamento estável 5.1/MikroC/Estacionamento.c"





sbit LCD_RS at LATB4_bit;
sbit LCD_EN at LATB5_bit;

sbit LCD_D4 at LATB0_bit;
sbit LCD_D5 at LATB1_bit;
sbit LCD_D6 at LATB2_bit;
sbit LCD_D7 at LATB3_bit;



sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;

sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;

int conta = 0;
char txt[7];


void inicio(){
Lcd_Init();
Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_CURSOR_OFF);

Lcd_Out(1, 1, "VAGAS TOT.:     16");
Lcd_Out(3, 1, "VAGAS OCUP.:     0");
}

void displays(){

if(conta == 0){

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;


PORTA.RA4 = 0;
PORTA.RA5 = 1;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATC.RC2 = 0;

}
if(conta == 1){


PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;


PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATC.RC2 = 1;
LATC.RC3 = 0;

}

if(conta == 2){

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATC.RC3 = 1;
LATC.RC4 = 0;

}

if(conta == 3){

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 1;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATC.RC4 = 1;
LATC.RC5 = 0;

}

if(conta == 4){

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 1;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATC.RC5 = 1;
LATC.RC6 = 0;

}

if(conta == 5){

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATC.RC6 = 1;
LATC.RC7 = 0;

}

if(conta == 6){

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATC.RC7 = 1;
LATD.RD0 = 0;

}

if(conta == 7){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 1;

LATD.RD0 = 1;
LATD.RD1 = 0;

}

if(conta == 8){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 1;

LATD.RD1 = 1;
LATD.RD2 = 0;

}

if(conta == 9){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 1;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATD.RD2 = 1;
LATD.RD3 = 0;

}

if(conta == 10){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 1;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATD.RD3 = 1;
LATD.RD4 = 0;

}

if(conta == 11){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATD.RD4 = 1;
LATD.RD5 = 0;

}

if(conta == 12){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATD.RD5 = 1;
LATD.RD6 = 0;

}

if(conta == 13){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 1;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATD.RD6 = 1;
LATD.RD7 = 0;

}

if(conta == 14){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 1;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATD.RD7 = 1;
LATE.RE0 = 0;

}

if(conta == 15){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATE.RE0 = 1;
LATE.RE1 = 0;

}

if(conta == 16){

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATE.RE1 = 1;
LATE.RE0 = 1;
}
}

void incrementa(){

if(conta >= 0 && conta < 16){

if(PORTC. RC0  == 0){

conta++;
delay_ms(300);

IntToStr(conta, txt);

Lcd_Out(3,13, txt);
delay_ms(300);

}}}

void decrementa(){

if(conta >= 1 && conta < 17){

if(PORTC. RC1  == 0){


conta--;
delay_ms(300);

IntToStr(conta, txt);

Lcd_Out(3,13, txt);
delay_ms(10);

}}}

void lotado(){

Lcd_Out(4, 1, "LOTADO");
Lcd_Out(2, 1, "        ");

Delay_ms(500);
lcd_cmd(_LCD_TURN_OFF);
Delay_ms(500);
lcd_cmd(_LCD_TURN_ON);
Delay_ms(500);

}

void vaga(){
Lcd_Out(2, 1, "TEM VAGA");
Lcd_Out(4, 1, "      ");
}


void main() {


TRISB = 0;
PORTB = 0;

TRISC. RC0  = 1;
TRISC. RC1  = 1;

TRISC.RC2 = 0;
TRISC.RC3 = 0;
TRISC.RC4 = 0;
TRISC.RC5 = 0;
TRISC.RC6 = 0;
TRISC.RC7 = 0;

PORTC. RC0  = 0;
PORTC. RC1  = 0;

PORTC.RC2 = 0;
PORTC.RC3 = 0;
PORTC.RC4 = 0;
PORTC.RC5 = 0;
PORTC.RC6 = 0;
PORTC.RC7 = 0;

TRISD.RD0 = 0;
TRISD.RD1 = 0;
TRISD.RD2 = 0;
TRISD.RD3 = 0;
TRISD.RD4 = 0;
TRISD.RD5 = 0;
TRISD.RD6 = 0;
TRISD.RD7 = 0;

PORTD.RD0 = 0;
PORTD.RD1 = 0;
PORTD.RD2 = 0;
PORTD.RD3 = 0;
PORTD.RD4 = 0;
PORTD.RD5 = 0;
PORTD.RD6 = 0;
PORTD.RD7 = 0;

TRISE.RE0 = 0;
TRISE.RE1 = 0;
TRISE.RE2 = 0;

PORTE.RE0 = 0;
PORTE.RE1 = 0;
PORTE.RE2 = 0;


TRISA.RA1 = 0;
TRISA.RA3 = 0;
TRISA.RA4 = 0;
TRISA.RA5 = 0;

TRISA.RA0 = 0;

inicio();


while(1){


displays();
incrementa();
decrementa();


if(conta < 16){

vaga();


}else if(conta == 16){
lotado();



}
Delay_ms (200);
LATA.RA0 = !LATA.RA0;
Delay_ms (200);



}

}
