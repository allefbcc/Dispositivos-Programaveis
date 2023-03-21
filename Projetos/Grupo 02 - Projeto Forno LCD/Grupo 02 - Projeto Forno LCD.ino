//define os LEDS e o Sensor para cada pino
#define LM35 A0
#define LED1 6
#define LED2 7
#define LED3 8
#define LED4 9

//Inclui biblioteca do LCD
#include <LiquidCrystal.h>
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);



void setup() {
  
  //define os LEDS como saida
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  
  // define os LEDS como desligado
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  
 //Inicia o LCD 16x2
 lcd.begin(16, 2);
  
}

void loop() {
  
  // cria a variável leitor que vai guardar a leitura analógica do sensor
  float leitor = analogRead(LM35);
  
  // cria a variável tensao que vai guardar a leitura de tensao do sensor
  float tensao = ((leitor) * 5 / (1023));
  
  // cria a variável temperatura que vai guardar o valor da temperatura
  //float temperatura = tensao / 0.01;
  float temperatura = (tensao / 0.01) - 50;
  
  
  //Condição para mostrar a temperatura atual e apagar LED1
  if(temperatura < 18){
    lcd.setCursor(0, 0);
    lcd.print("Temp. Atual");
    lcd.setCursor(0, 1);
    lcd.print(temperatura);
    digitalWrite(LED1, LOW);
    
    //Apaga o nome "Situacao de alarme"
    lcd.print("           ");
  }
    
  
  //condicao para ascender o LED1 quando a temperatura estiver baixa
  if(temperatura >= 18 && temperatura <= 25) {
    lcd.setCursor(0, 0);
    digitalWrite(LED1, HIGH);
    
    //Informa temperatura baixa
    lcd.print("Temp. Baixa: ");
    lcd.setCursor(0, 1);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");
  
  }
  
   //condicao para ascender o LED2 quando a temperatura estiver media
  if(temperatura >= 26 && temperatura <= 28.84) {
    lcd.setCursor(0, 0);
    digitalWrite(LED2, HIGH);
    digitalWrite(LED1, LOW);
    
    //Informa temperatura media
    lcd.print("Temp. Media: ");
    lcd.setCursor(0, 1);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");
   
   //Condicao para apagar o LED2
  }else if(temperatura < 26){
    digitalWrite(LED2, LOW);
  }

   //condicao para ascender o LED3 quando a temperatura estiver alta
  if(temperatura > 28.84) {
    lcd.setCursor(0, 0);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED2, LOW);
    digitalWrite(LED1, LOW);
    
    //Pisca o LED4 em situacao de alarme
    digitalWrite(LED4, HIGH);
    delay(100);
    digitalWrite(LED4, LOW);
    delay(100);
    
    //Informa temperatura alta
    lcd.print("Temp. Alta: ");
    lcd.setCursor(0, 1);
    lcd.print(temperatura); 
    lcd.print(" Sit. Alar.");
    
  //apaga o LED3 e LED4
  }else if(temperatura < 28.84){
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
  }
 
  
  
  
}
 
