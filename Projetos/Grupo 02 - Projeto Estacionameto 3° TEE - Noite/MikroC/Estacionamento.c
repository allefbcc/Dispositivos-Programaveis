// Defini��o dos bot�es no pinos RC0 e RC1
#define BOTAOI RC0 // INCREMENTO
#define BOTAOD RC1 // DECREMENTO
 
//Sentido dos pinos
sbit LCD_RS at LATB4_bit;
sbit LCD_EN at LATB5_bit;
 
sbit LCD_D4 at LATB0_bit;
sbit LCD_D5 at LATB1_bit;
sbit LCD_D6 at LATB2_bit;
sbit LCD_D7 at LATB3_bit;

 
//Dire��o dos pinos
sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
 
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
 
int conta = 0;        // Varivel pra contar as vezes q o bot�o for acionado
char txt[7];          // Variavel utlizada pra guardar a convers�o de inteiro pra string


void inicio(){                       //Inicio do programa
Lcd_Init();
Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_CURSOR_OFF);

Lcd_Out(1, 1, "VAGAS TOT.:     16");
Lcd_Out(3, 1, "VAGAS OCUP.:     0");
}

void displays(){              //Fun��o do display

if(conta == 0){ // 16            //Contagem de vagas disponiveis
//Display1
PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

//Display2
PORTA.RA4 = 0;
PORTA.RA5 = 1;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATC.RC2 = 0;                 //Acende o led do estacionameto

}
if(conta == 1){ // 15            //Contagem de vagas disponiveis

//Display1
PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

//Display2
PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATC.RC2 = 1;                 //Acende o led do estacionameto
LATC.RC3 = 0;

}

if(conta == 2){ // 14              //Contagem de vagas disponiveis

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATC.RC3 = 1;                  //Acende o led do estacionameto
LATC.RC4 = 0;

}

if(conta == 3){ // 13          //Contagem de vagas disponiveis

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 1;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATC.RC4 = 1;                //Acende o led do estacionameto
LATC.RC5 = 0;

}

if(conta == 4){ // 12             //Contagem de vagas disponiveis

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 1;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATC.RC5 = 1;             //Acende o led do estacionameto
LATC.RC6 = 0;

}

if(conta == 5){ // 11            //Contagem de vagas disponiveis

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATC.RC6 = 1;                //Acende o led do estacionameto
LATC.RC7 = 0;

}

if(conta == 6){ // 10         //Contagem de vagas disponiveis

PORTE.RE2 = 1;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATC.RC7 = 1;             //Acende o led do estacionameto
LATD.RD0 = 0;

}

if(conta == 7){ // 09         //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 1;

LATD.RD0 = 1;                    //Acende o led do estacionameto
LATD.RD1 = 0;

}

if(conta == 8){ // 08            //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 1;

LATD.RD1 = 1;                     //Acende o led do estacionameto
LATD.RD2 = 0;

}

if(conta == 9){ // 07            //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 1;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATD.RD2 = 1;                     //Acende o led do estacionameto
LATD.RD3 = 0;

}

if(conta == 10){ // 06          //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 1;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATD.RD3 = 1;
LATD.RD4 = 0;                     //Acende o led do estacionameto

}

if(conta == 11){ // 05        //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATD.RD4 = 1;                      //Acende o led do estacionameto
LATD.RD5 = 0;

}

if(conta == 12){ // 04       //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 1;
PORTB.RB7 = 0;

LATD.RD5 = 1;                   //Acende o led do estacionameto
LATD.RD6 = 0;

}

if(conta == 13){ // 03         //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 1;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATD.RD6 = 1;                    //Acende o led do estacionameto
LATD.RD7 = 0;

}

if(conta == 14){ // 02       //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 1;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATD.RD7 = 1;                   //Acende o led do estacionameto
LATE.RE0 = 0;

}

if(conta == 15){ // 01       //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 1;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATE.RE0 = 1;                     //Acende o led do estacionameto
LATE.RE1 = 0;

}

if(conta == 16){ // 00             //Contagem de vagas disponiveis

PORTE.RE2 = 0;
PORTA.RA1 = 0;
PORTA.RA2 = 0;
PORTA.RA3 = 0;

PORTA.RA4 = 0;
PORTA.RA5 = 0;
PORTB.RB6 = 0;
PORTB.RB7 = 0;

LATE.RE1 = 1;                      //Acende o led do estacionameto
LATE.RE0 = 1;
}
}

void incrementa(){                     //Fun��o de Incremento pelo bot�o

if(conta >= 0 && conta < 16){          // Condi��o pra que o valor mostrado no display n�o passe do limite

if(PORTC.BOTAOI == 0){                 // Cond��o de incremento do botao

conta++;                               // Variavel conta usada pra incremento
delay_ms(300);

IntToStr(conta, txt);                  // Fun��o para converter tipo inteiro pra string

Lcd_Out(3,13, txt);                    // Fun��o que vai mostrar a mensagem convertida no display
delay_ms(300);

}}}

void decrementa(){                    //Fun��o de decremento pelo bot�o

if(conta >= 1 && conta < 17){         // Condi��o pra que o valor mostrado no display n�o passe do limite

if(PORTC.BOTAOD == 0){                // Cond��o de decremento do botao


conta--;                               // Variavel conta usada pra decremento
delay_ms(300);

IntToStr(conta, txt);                   // Fun��o para converter tipo inteiro pra string

Lcd_Out(3,13, txt);                     // Fun��o que vai mostrar a mensagem convertida no display
delay_ms(10);

}}}

void lotado(){                          //Fun��o criada para lotado

Lcd_Out(4, 1, "LOTADO");
Lcd_Out(2, 1, "        ");

Delay_ms(500);
lcd_cmd(_LCD_TURN_OFF);
Delay_ms(500);
lcd_cmd(_LCD_TURN_ON);
Delay_ms(500);

}

void vaga(){
Lcd_Out(2, 1, "TEM VAGA");            //Fun��o criada para vaga
Lcd_Out(4, 1, "      ");
}


void main() {


TRISB = 0;                            //Define PORTB como saida
PORTB = 0;                            //Inicia desligado

TRISC.BOTAOI = 1;
TRISC.BOTAOD = 1;                     //Define bot�es como entrada

TRISC.RC2 = 0; // 1
TRISC.RC3 = 0; // 2
TRISC.RC4 = 0; // 3
TRISC.RC5 = 0; // 4                   //Define como saida
TRISC.RC6 = 0; // 5
TRISC.RC7 = 0; // 6

PORTC.BOTAOI = 0;
PORTC.BOTAOD = 0;                     //Inicia os bot�es sem estar pressionado

PORTC.RC2 = 0; // 1
PORTC.RC3 = 0; // 2
PORTC.RC4 = 0; // 3
PORTC.RC5 = 0; // 4
PORTC.RC6 = 0; // 5                       //Inicia os leds desligados
PORTC.RC7 = 0; // 6

TRISD.RD0 = 0;
TRISD.RD1 = 0;
TRISD.RD2 = 0;
TRISD.RD3 = 0;
TRISD.RD4 = 0;                             //Define como saida
TRISD.RD5 = 0;
TRISD.RD6 = 0;
TRISD.RD7 = 0;

PORTD.RD0 = 0;
PORTD.RD1 = 0;
PORTD.RD2 = 0;
PORTD.RD3 = 0;
PORTD.RD4 = 0;                            //Inicia os leds desligados
PORTD.RD5 = 0;
PORTD.RD6 = 0;
PORTD.RD7 = 0;

TRISE.RE0 = 0; // 15
TRISE.RE1 = 0; // 16                     //Define como saida
TRISE.RE2 = 0;

PORTE.RE0 = 0; //15                     //Inicia os leds desligados
PORTE.RE1 = 0; // 16
PORTE.RE2 = 0;                         //Inicia display de 7seg desligado


TRISA.RA1 = 0;
TRISA.RA3 = 0;                        //Define como saida
TRISA.RA4 = 0;
TRISA.RA5 = 0;

TRISA.RA0 = 0;                        //Pino do Led de aten��o do estacionamento definido como sa�da

inicio();           // Fun��o de inicio do display


while(1){                             //Condi��o verdadeira


displays();
incrementa();                        //chamando as fun��es criadas para os displays e bot�es
decrementa();


if(conta < 16){                      // Condi��o pra chamar a fun��o vaga assim q liga o display
 
vaga();

 
}else if(conta == 16){               // Condi��o pra chamar a fun��o lotado assim q atinge o numero m�ximo de caroos no display
lotado();



}
Delay_ms (200);
LATA.RA0 = !LATA.RA0;          //Inverte o estado do LED, fazendo-o piscar dentro do la�o
Delay_ms (200);



}

}