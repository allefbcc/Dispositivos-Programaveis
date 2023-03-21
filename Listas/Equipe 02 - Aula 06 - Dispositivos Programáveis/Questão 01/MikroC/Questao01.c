#define LED1 PORTB.RB2
#define LED2 PORTB.RB1
#define LED3 PORTB.RB0

unsigned int leitor = 0;

void main() {

ADCON0 = 0b10000001;   // Configura o registrador ADCON0
ADCON1 = 0b01001110;  // Configura o registrador ADCON1

TRISB = 0;  // Define o PORTB como saída
PORTB = 0;  // Define o PORTB como desligado

while(1){

leitor = ADC_READ(0); // Faz a leitura do pino A0 e armazena o valor na variável leitor

if(leitor > 0){   // Condição para não ascender nenhum LED enquanto for maior que zero

LED1 = 0;
LED2 = 0;       // LEDS desligados
LED3 = 0;

}

if(leitor > 205){ // Condição para ascender o LED1 quanto atingir o valor que corresponde a 1V

LED1 = 1;
LED2 = 0;                // Só o LED1 ligado
LED3 = 0;

}

if(leitor > 614){ // Condição para ascender o LED2 quanto atingir o valor que corresponde a 3V

LED1 = 1;
LED2 = 1;        // LED1 e LED2 ligados
LED3 = 0;

}

if(leitor > 819){ // Condição para ascender o LED3 quanto atingir o valor que corresponde a 4V

LED1 = 1;
LED2 = 1;        // LED1, LED2 e LED3 ligados
LED3 = 1;

}

Delay_ms(100);

}

}