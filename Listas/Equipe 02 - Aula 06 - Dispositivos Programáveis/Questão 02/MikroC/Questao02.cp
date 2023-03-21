#line 1 "C:/Users/allef/Desktop/Equipe 02 - Aula 06 - Dispositivos Programáveis/Questão 02/MikroC/Questao02.c"
void main(){

TRISB = 0;
TRISD = 0;

ADCON0.ADON = 1;
ADCON0.ADFM = 0;


while(1) {
 ADCON0.GO = 1;
 while (!ADCON0.GO_DONE) {
 }
 PORTB = ADRESH;
 PORTD = ADRESL;
 Delay_ms (100);
}
}
