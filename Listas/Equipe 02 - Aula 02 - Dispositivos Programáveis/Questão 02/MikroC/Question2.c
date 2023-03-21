void main() {
TRISB.RB0 = 0;  //Funçao principal
TRISB.RB1 = 0;  //Define o pino RB0 como saída
TRISB.RB2 = 0;  //Define o pino RB0 como saída
TRISB.RB3 = 0;  //Define o pino RB0 como saída
TRISB.RB4 = 0;  //Define o pino RB0 como saída
TRISB.RB5 = 0;  //Define o pino RB0 como saída
TRISB.RB6 = 0;  //Define o pino RB0 como saída
TRISB.RB7 = 0;  //Define o pino RB0 como saída
while (1) {     //Laço infinito
PORTB.RB0 = 1;  //Liga o led conectado ao port RB0
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB1 = 1;  //Liga o led conectado ao port RB1
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB2 = 1;  //Liga o led conectado ao port RB2
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB3 = 1;  //Liga o led conectado ao port RB3
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB4 = 1;  //Liga o led conectado ao port RB4
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB5 = 1;  //Liga o led conectado ao port RB5
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB6 = 1;  //Liga o led conectado ao port RB6
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB7 = 1;  //Liga o led conectado ao port RB7
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB0 = 0;  //Desliga o led conectado ao port RB0
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB1 = 0;  //Desliga o led conectado ao port RB1
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB2 = 0;  //Desliga o led conectado ao port RB2
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB3 = 0;  //Desliga o led conectado ao port RB3
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB4 = 0;  //Desliga o led conectado ao port RB4
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB5 = 0;  //Desliga o led conectado ao port RB5
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB6 = 0;  //Desliga o led conectado ao port RB6
Delay_ms(1000); //Aguarda 1 segundo
PORTB.RB7 = 0;  //Desliga o led conectado ao port RB7
Delay_ms(1000); //Aguarda 1 segundo
}
}