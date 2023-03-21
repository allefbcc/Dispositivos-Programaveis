#line 1 "C:/Users/Rameritiofly/Desktop/Disp_prgveis/Q3.2/Q3.2/Proteus_codigo.c"



int x;
void main() {
TRISA. RA1  = 1;
TRISA. RA2  = 1;
TRISB = 0b00000000;
PORTB=0b00111111;

 while(1){

 if(PORTA. RA1  == 0 ){
 x++;

 switch(x){

 case 1 : ("1");
 Delay_ms(500);
 PORTB=0b00000110;
 break;

 case 2 :("2");
 Delay_ms(500);
 PORTB=0b01011011;
 break;

 case 3 :("3");
 Delay_ms(500);
 PORTB=0b01001111;
 break;

 case 4 :("4");
 Delay_ms(500);
 PORTB=0b01100110;
 break;

 case 5 :("5");
 Delay_ms(500);
 PORTB=0b01101101;
 break;

 case 6 :("6");
 Delay_ms(500);
 PORTB=0b01111101;
 break;

 case 7 :("7");
 Delay_ms(500);
 PORTB=0b00000111;
 break;

 case 8 :("8");
 Delay_ms(500);
 PORTB=0b01111111;
 break;

 case 9 :("9");
 Delay_ms(500);
 PORTB=0b01101111;
 break;

 case 10 :("10");
 Delay_ms(500);
 PORTB=0b00111111;
 break;

 }
 if (x >= 10) {
 x = 0;
 }
 }
 if(PORTA. RA2  == 0) {
 PORTB=0b00111111;
 x-=x;
 }
 }
}
