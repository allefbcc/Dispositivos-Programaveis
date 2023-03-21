#define BOTAO RA0
#define BOTAO2 RA1

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

int desloca;

TRISA.BOTAO = 1; //DEFINE O BOTAO COMO ENTRADA
TRISA.BOTAO2 = 1;//DEFINE O BOTAO2 COMO ENTRADA

PORTA.BOTAO = 0; //DEFINE O BOTAO COMO DESLIGADO
PORTA.BOTAO2 = 0;   //DEFINE O BOTAO2 COMO DESLIGADO


TRISB = 0;       //DEFINE O POTRB COMO SAÍDA
PORTB = 0;  //DEFINE O POTRB COMO DESLIGADO

Lcd_Init(); //INICIA O LCD
Lcd_Cmd(_LCD_CLEAR); //LIMPA A TELA DO LCD
Lcd_Cmd(_LCD_CURSOR_OFF); //DESLIGA O CURSOR DO LCD
lcd_out(1,3, "IFPE"); // MOSTRA A MENSAGEM IFPE NA TELA DO DISPLAY

while(1){

if(PORTA.BOTAO == 0){

for(desloca = 1; desloca <= 1; desloca++){ //COMANDO DE REPETIÇÃO FINITO
Lcd_Cmd(_LCD_SHIFT_RIGHT); // MOVE A MENSAGEM DO DISPLAY PRA DIREITA
Delay_ms(100);  // AGUARDA 100 ms
}




}if(PORTA.BOTAO2 == 0){

for(desloca = 1; desloca <= 1; desloca++){ //COMANDO DE REPETIÇÃO FINITO
Lcd_Cmd(_LCD_SHIFT_LEFT); //MOVE A MENSAGEM DO DISPLAY PRA ESQUERDA
Delay_ms(100); // AGUARDA 100 ms
}


}


}

}