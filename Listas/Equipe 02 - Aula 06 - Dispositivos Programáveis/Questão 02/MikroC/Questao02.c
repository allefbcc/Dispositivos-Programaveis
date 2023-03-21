void main(){

TRISB = 0;
TRISD = 0;

ADCON0.ADON = 1;      //Habilita o conversor AD
ADCON0.ADFM = 0;      // Justifica a Esquerda


while(1) {                                //Inicia loop infinito
 ADCON0.GO_DONE = 1;                               //Inicia a conversao
 while (!ADCON0.GO_DONE) {                  //Aguarda o fim da conversao
 }
 PORTB = ADRESH;                          //Transfere o valor para porta B
 PORTD = ADRESL;                                //Transfere valor para porta C
 Delay_ms (100);                        // Atraso de 100 ms
}
}
