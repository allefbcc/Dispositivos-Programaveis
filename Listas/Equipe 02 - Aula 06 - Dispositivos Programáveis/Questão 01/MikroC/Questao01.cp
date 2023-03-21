#line 1 "C:/Users/allef/Desktop/Equipe 02 - Aula 06 - Dispositivos Programáveis/Questão 01/MikroC/Questao01.c"




unsigned int leitor = 0;

void main() {

ADCON0 = 0b10000001;
ADCON1 = 0b01001110;

TRISB = 0;
PORTB = 0;

while(1){

leitor = ADC_READ(0);

if(leitor > 0){

 PORTB.RB2  = 0;
 PORTB.RB1  = 0;
 PORTB.RB0  = 0;

}

if(leitor > 205){

 PORTB.RB2  = 1;
 PORTB.RB1  = 0;
 PORTB.RB0  = 0;

}

if(leitor > 614){

 PORTB.RB2  = 1;
 PORTB.RB1  = 1;
 PORTB.RB0  = 0;

}

if(leitor > 819){

 PORTB.RB2  = 1;
 PORTB.RB1  = 1;
 PORTB.RB0  = 1;

}

Delay_ms(100);

}

}
