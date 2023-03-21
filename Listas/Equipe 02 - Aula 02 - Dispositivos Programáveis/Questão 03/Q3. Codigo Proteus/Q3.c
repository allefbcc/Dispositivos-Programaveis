// Q3 liga e desliga sequencial.

#define BUT_1 RA0
#define BUT_2 RA1           //def butões


void main() {

TRISA.BUT_1 = 1;
TRISA.BUT_2 = 1;           // Tris entrada

TRISB.RB0 = 0;
TRISB.RB1 = 0;
TRISB.RB2 = 0;
TRISB.RB3 = 0;            // Tris saida
TRISB.RB4 = 0;
TRISB.RB5 = 0;
TRISB.RB6 = 0;
TRISB.RB7 = 0;

PORTA.BUT_1 = 1;
PORTA.BUT_2 = 1;
PORTB.RB0 = 0;
PORTB.RB1 = 0;             //Como as coisas começam.
PORTB.RB2 = 0;
PORTB.RB3 = 0;
PORTB.RB4 = 0;
PORTB.RB5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

while(1){
  if (PORTA.BUT_1 == 0){
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
  if (PORTA.BUT_2 == 0){
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