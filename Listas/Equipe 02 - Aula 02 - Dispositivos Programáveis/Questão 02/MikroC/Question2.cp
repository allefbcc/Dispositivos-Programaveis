#line 1 "C:/Users/Taynara/Desktop/alef 2/Question2.c"
void main() {
TRISB.RB0 = 0;
TRISB.RB1 = 0;
TRISB.RB2 = 0;
TRISB.RB3 = 0;
TRISB.RB4 = 0;
TRISB.RB5 = 0;
TRISB.RB6 = 0;
TRISB.RB7 = 0;
while (1) {
PORTB.RB0 = 1;
Delay_ms(1000);
PORTB.RB1 = 1;
Delay_ms(1000);
PORTB.RB2 = 1;
Delay_ms(1000);
PORTB.RB3 = 1;
Delay_ms(1000);
PORTB.RB4 = 1;
Delay_ms(1000);
PORTB.RB5 = 1;
Delay_ms(1000);
PORTB.RB6 = 1;
Delay_ms(1000);
PORTB.RB7 = 1;
Delay_ms(1000);
PORTB.RB0 = 0;
Delay_ms(1000);
PORTB.RB1 = 0;
Delay_ms(1000);
PORTB.RB2 = 0;
Delay_ms(1000);
PORTB.RB3 = 0;
Delay_ms(1000);
PORTB.RB4 = 0;
Delay_ms(1000);
PORTB.RB5 = 0;
Delay_ms(1000);
PORTB.RB6 = 0;
Delay_ms(1000);
PORTB.RB7 = 0;
Delay_ms(1000);
}
}
