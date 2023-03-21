#line 1 "C:/Users/allef/Desktop/2° Atividade - Dispositivos Programáveis/Questão 01/MikroC/Questao01.c"
#line 4 "C:/Users/allef/Desktop/2° Atividade - Dispositivos Programáveis/Questão 01/MikroC/Questao01.c"
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
