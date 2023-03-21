/*piscar os leds 2 vezes em intervalos de 1 segundo
  piscar os leds 4 vezes em intervalo de 1 segundo*/

void main() {
 TRISB.RB1=0;
 TRISB.RB0=0;
 while(1){
 PORTB.RB0=1;
 delay_ms(1000);
 PORTB.RB0=0;
 delay_ms(1000);
 PORTB.RB0=1;
 delay_ms(1000);
 PORTB.RB0=0;
 delay_ms(1000);
 PORTB.RB1=1;
 delay_ms(1000);
 PORTB.RB1=0;
 delay_ms(1000);
 PORTB.RB1=1;
 delay_ms(1000);
 PORTB.RB1=0;
 delay_ms(1000);
 PORTB.RB1=1;
 delay_ms(1000);
 PORTB.RB1=0;
 delay_ms(1000);
 PORTB.RB1=1;
 delay_ms(1000);
 PORTB.RB1=0;
 delay_ms(1000);
 }}