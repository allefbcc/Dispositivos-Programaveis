#line 1 "C:/Users/Rameritiofly/Desktop/Atividades feitas/Q3/Q3. Codigo Proteus/Q3.c"






void main() {

TRISA. RA0  = 1;
TRISA. RA1  = 1;

TRISB.RB0 = 0;
TRISB.RB1 = 0;
TRISB.RB2 = 0;
TRISB.RB3 = 0;
TRISB.RB4 = 0;
TRISB.RB5 = 0;
TRISB.RB6 = 0;
TRISB.RB7 = 0;

PORTA. RA0  = 1;
PORTA. RA1  = 1;
PORTB.RB0 = 0;
PORTB.RB1 = 0;
PORTB.RB2 = 0;
PORTB.RB3 = 0;
PORTB.RB4 = 0;
PORTB.RB5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

while(1){
 if (PORTA. RA0  == 0){
 PORTB.RB7 = 1;
 Delay_ms (1000);
 PORTB.RB6 = 1;
 Delay_ms (1000);
 PORTB.RB5 = 1;
 Delay_ms (1000);
 PORTB.RB4 = 1;
 Delay_ms (1000);
 PORTB.RB3 = 1;
 Delay_ms (1000);
 PORTB.RB2 = 1;
 Delay_ms (1000);
 PORTB.RB1 = 1;
 Delay_ms (1000);
 PORTB.RB0 = 1;

 }
 if (PORTA. RA1  == 0){
 PORTB.RB7 = 0;
 Delay_ms (1000);
 PORTB.RB6 = 0;
 Delay_ms (1000);
 PORTB.RB5 = 0;
 Delay_ms (1000);
 PORTB.RB4 = 0;
 Delay_ms (1000);
 PORTB.RB3 = 0;
 Delay_ms (1000);
 PORTB.RB2 = 0;
 Delay_ms (1000);
 PORTB.RB1 = 0;
 Delay_ms (1000);
 PORTB.RB0 = 0;
 }
 }
}
