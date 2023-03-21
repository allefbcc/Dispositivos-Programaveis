//define os LEDS e o Sensor para cada pino
#define LM35 A0

//LED VERMELHO
#define LED1 23
#define LED2 25
#define LED3 27
#define LED4 29

//LED AMARELO
#define LED5 31
#define LED6 33
#define LED7 35
#define LED8 37

//LED VERDE
#define LED9 39
#define LED10 41
#define LED11 43
#define LED12 45

//Inclui biblioteca do LCD
#include <LiquidCrystal.h>
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {

  
  //define os LEDS VERMELHOS como saida
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);

   //define os LEDS AMARELOS como saida
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED7, OUTPUT);
  pinMode(LED8, OUTPUT);

   //define os LEDS VERDES como saida
  pinMode(LED9, OUTPUT);
  pinMode(LED10, OUTPUT);
  pinMode(LED11, OUTPUT);
  pinMode(LED12, OUTPUT);
  
  //define os LEDS VERMELHOS como desligado
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);

   //define os LEDS AMARELOS como desligado
  digitalWrite(LED5, LOW);
  digitalWrite(LED6, LOW);
  digitalWrite(LED7, LOW);
  digitalWrite(LED8, LOW);

  //define os LEDS VERDES como desligado
  digitalWrite(LED9, LOW);
  digitalWrite(LED10, LOW);
  digitalWrite(LED11, LOW);
  digitalWrite(LED12, LOW);
  
 //Inicia o LCD 16x4
 lcd.begin(16, 4);
  
}

void loop() {

  // cria a variável leitor que vai guardar a leitura analógica do sensor
  float leitor = analogRead(LM35);
  
  // cria a variável tensao que vai guardar a leitura de tensao do sensor
  float tensao = ((leitor) * 5 / (1023));
  
  // cria a variável temperatura que vai guardar o valor da temperatura
  float temperatura = (int) (tensao / 0.01);

    lcd.setCursor(0, 0);
    lcd.print("Temp.");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
  
//======================================================================= 
  
  //condicao para ascender o LED1 quando a temperatura estiver baixa

    if(temperatura == 20) {
    lcd.setCursor(0, 0);
    digitalWrite(LED12, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Baixa");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 20){
    lcd.setCursor(0, 0);
    lcd.print("Temp.      ");
    digitalWrite(LED12, LOW);
//=======================================================================
    }else if(temperatura == 25){

    lcd.setCursor(0, 0);
    digitalWrite(LED11, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Baixa");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 25){
      digitalWrite(LED11, LOW);
//=======================================================================
    }else if(temperatura == 30){

    lcd.setCursor(0, 0);
    digitalWrite(LED10, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Baixa");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 30){
      digitalWrite(LED10, LOW);
//=======================================================================
    }else if(temperatura == 35){

    lcd.setCursor(0, 0);
    digitalWrite(LED9, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Baixa");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 35){
      digitalWrite(LED9, LOW);
//=======================================================================




    }else if(temperatura == 40){

    lcd.setCursor(0, 0);
    digitalWrite(LED8, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Media");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 40){
      lcd.setCursor(0, 0);
      digitalWrite(LED8, LOW);
      lcd.print("Temp. Baixa");
//=======================================================================
    }else if(temperatura == 45){

    lcd.setCursor(0, 0);
    digitalWrite(LED7, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Media");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 45){
      digitalWrite(LED7, LOW);
//=======================================================================
    }else if(temperatura == 50){

    lcd.setCursor(0, 0);
    digitalWrite(LED6, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Media");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 50){
      digitalWrite(LED6, LOW);
//=======================================================================
    }else if(temperatura == 55){

    lcd.setCursor(0, 0);
    digitalWrite(LED5, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Media");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 55){
      digitalWrite(LED5, LOW);
//=======================================================================





    }else if(temperatura == 60){

    lcd.setCursor(0, 0);
    digitalWrite(LED4, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Alta ");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     lcd.setCursor(0, 3);
     lcd.print("Sit. de Alarme");

    }else if(temperatura < 60){
      lcd.setCursor(0, 0);
      digitalWrite(LED4, LOW);
      lcd.print("Temp. Media");
     lcd.setCursor(0, 3);
     lcd.print("              ");
//=======================================================================

    }else if(temperatura == 65){

    lcd.setCursor(0, 0);
    digitalWrite(LED3, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Alta ");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 65){
      digitalWrite(LED3, LOW);
//=======================================================================

    }else if(temperatura == 70){

    lcd.setCursor(0, 0);
    digitalWrite(LED2, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Alta ");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 70){
      digitalWrite(LED2, LOW);
//=======================================================================

    }else if(temperatura >= 75){

    lcd.setCursor(0, 0);
    digitalWrite(LED1, HIGH);

    //Informa temperatura baixa
    lcd.print("Temp. Alta ");
    lcd.setCursor(0, 2);
    lcd.print(temperatura);
    
     //Apaga o nome "Situacao de alarme"
     lcd.print("           ");

    }else if(temperatura < 75){
      digitalWrite(LED1, LOW);
//=======================================================================

    }

}
