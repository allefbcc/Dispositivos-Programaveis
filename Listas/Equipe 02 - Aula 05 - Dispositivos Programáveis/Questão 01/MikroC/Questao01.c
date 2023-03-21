#define BOTAO RA0

//SENTIDO DOS PINOS
sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;

sbit LCD_D4 at RB2_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D7 at RB5_bit;

//DIREÇÃO DOS PINOS
sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;

sbit LCD_D4_Direction at TRISB1_bit;
sbit LCD_D5_Direction at TRISB2_bit;
sbit LCD_D6_Direction at TRISB3_bit;
sbit LCD_D7_Direction at TRISB4_bit;



void main() {

TRISA.BOTAO = 1; //DEFINE O BOTAO COMO ENTRADA
TRISA.RA1 = 0;// //DEFINE O LED COMO SAÍDA

PORTA.BOTAO = 0; //DEFINE O BOTAO COMO DESLIGADO
PORTA.RA1 = 0;   //DEFINE O LED COMO DESLIGADO


TRISB = 0;       //DEFINE O POTRB COMO SAÍDA
PORTB = 0;  //DEFINE O POTRB COMO DESLIGADO

Lcd_Init(); //INICIA O LCD
Lcd_Cmd(_LCD_CLEAR); //LIMPA A TELA DO LCD
Lcd_Cmd(_LCD_CURSOR_OFF); //DESLIGA O CURSOR DO LCD

while(1){

if(PORTA.BOTAO == 0){

PORTA.RA1 = 1; //LIGA O LED
lcd_out(1,1, "LED ON "); // MOSTRA MENSAGEN ON NA TELA DO LCD
Delay_ms(200); // DÁ UM DELAY PRA QUE DER UM TEMPO DE VISUALIZAR A MENSAGEM NO DISPLAY

}else{

PORTA.RA1 = 0; // DESLIGA O LED
lcd_out(1,1, "LED OFF"); //DÁ UM DELAY PRA QUE DER UM TEMPO DE VISUALIZAR A MENSAGEM NO DISPLAY


}


}

}