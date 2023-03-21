#define BOTAO RA0
void main(){

TRISB = 0b00000000;
TRISA.BOTAO = 1;

PORTB = 0b00000000;

while(1){

if(PORTA.BOTAO == 0){

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