#define BUTAO1 RA1
#define BUTAO2 RA2

int x;
void num1(){
    if(PORTA.BUTAO1 == 0 ){
    x++;

    switch(x){

    case 1 : ("1");
    Delay_ms(500);
    PORTB=0b00000110;
    break;

   }
   }

}
void num2(){
 if(PORTA.BUTAO2 == 0) {
     PORTB=0b01011011;
     Delay_ms(500);
     x-=x;
    }
}
void interacao(){
if( PORTA.BUTAO1 == 1 && PORTA.BUTAO2 == 1){
    PORTB=0b00111010;
    Delay_ms(100);
    PORTB=0b00111001;
    Delay_ms(100);
    PORTB=0b00111011;
    Delay_ms(100);
    PORTB=0b00110111;
    Delay_ms(100);
    PORTB=0b00100111;
    Delay_ms(100);
    PORTB=0b00010111;
    Delay_ms(100);
    }
}


void main() {
TRISA.BUTAO1 = 1;
TRISA.BUTAO2 = 1;
TRISB = 0b00000000;
PORTB=0b00111111;

 while(1){
 
 interacao();
 num1();
 num2();


 }
}