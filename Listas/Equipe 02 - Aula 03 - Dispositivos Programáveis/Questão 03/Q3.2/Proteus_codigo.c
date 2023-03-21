#define BOTAO_1 RA1
#define BOTAO_2 RA2

int x;
void main() {
TRISA.BOTAO_1 = 1;
TRISA.BOTAO_2 = 1;
TRISB = 0b00000000;
PORTB=0b00111111;
 
 while(1){
     
    if(PORTA.BOTAO_1 == 0 ){
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
    if (x >= 10) {//Se x for maior ou igual a 10
     x = 0;//Atribui 0 a contador
    }
   }
   if(PORTA.BOTAO_2 == 0) {
     PORTB=0b00111111;
     x-=x;
    }
 }
}
