#line 1 "C:/Users/allef/Desktop/Equipe 02 - Aula 03 - Dispositivos Programáveis/Questão 01/MikroC/Questao01.c"

 void main() {
 TRISB = 0b00000000;
 TRISA.RA0 = 0;
 TRISA.RA1 = 1;

while(1){

 PORTB=0b00111111;
 delay_ms (500);
 PORTB=0b00000110;
 delay_ms(500);
 PORTB=0b01011011;
 delay_ms (500);
 PORTB=0b01001111;
 delay_ms(500);
 PORTB=0b01100110;
 delay_ms (500);
 PORTB=0b01101101;
 delay_ms(500);
 PORTB=0b011111101;
 delay_ms (500);
 PORTB=0b00000111;
 delay_ms(500);
 PORTB=0b01111111;
 delay_ms (500);
 PORTB=0b01101111;
 PORTA=0b00000001;
 delay_ms(500);
 break;

}

while(1){
 if(PORTA.RA1 == 0){
 PORTA=0b00000000;

 PORTB=0b00111111;
 delay_ms (500);
 PORTB=0b00000110;
 delay_ms(500);
 PORTB=0b01011011;
 delay_ms (500);
 PORTB=0b01001111;
 delay_ms(500);
 PORTB=0b01100110;
 delay_ms (500);
 PORTB=0b01101101;
 delay_ms(500);
 PORTB=0b011111101;
 delay_ms (500);
 PORTB=0b00000111;
 delay_ms(500);
 PORTB=0b01111111;
 delay_ms (500);
 PORTB=0b01101111;
 PORTA=0b00000001;
 delay_ms(500);

 }

}


 }
