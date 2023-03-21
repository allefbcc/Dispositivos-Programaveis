#line 1 "C:/Users/allef/Desktop/2° Atividade - Dispositivos Programáveis/Questão 04/MikroC/Questao04.c"

void main(){

TRISB = 0b00000000;
TRISA. RA0  = 1;

PORTB = 0b00000000;

while(1){

if(PORTA. RA0  == 0){

PORTB.RB7 = 1;
Delay_ms(1000);

PORTB.RB6 = 1;
Delay_ms(1000);

PORTB.RB5 = 1;
Delay_ms(1000);

PORTB.RB4 = 1;
Delay_ms(1000);

PORTB.RB3 = 1;
Delay_ms(1000);

PORTB.RB2 = 1;
Delay_ms(1000);

PORTB.RB1 = 1;
Delay_ms(1000);

PORTB.RB0 = 1;
Delay_ms(1000);}

else{

PORTB.RB7 = 0;
Delay_ms(1000);

PORTB.RB6 = 0;
Delay_ms(1000);

PORTB.RB5 = 0;
Delay_ms(1000);

PORTB.RB4 = 0;
Delay_ms(1000);

PORTB.RB3 = 0;
Delay_ms(1000);

PORTB.RB2 = 0;
Delay_ms(1000);

PORTB.RB1 = 0;
Delay_ms(1000);

PORTB.RB0 = 0;
Delay_ms(1000);}

}
}
