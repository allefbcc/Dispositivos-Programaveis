
#include <LiquidCrystal.h>
#include<Servo.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

#define DISP1 30
#define DISP2 31
#define DISP3 32
#define DISP4 33

#define DISP5 13
#define DISP6 10
#define DISP7 9
#define DISP8 8


#define DISP9 24
#define DISP10 25
#define DISP11 26
#define DISP12 27

#define SENSORA 22
#define SENSORB 23

#define LED1 34
#define LED2 35
#define LED3 36
#define LED4 37
#define LED5 38
#define LED6 39
#define LED7 40
#define LED8 41
#define LED9 42
#define LED10 43

#define LED11 44
#define LED12 45
#define LED13 46
#define LED14 47
#define LED15 48
#define LED16 49
#define LED17 50
#define LED18 51
#define LED19 28
#define LED20 29

#define CANCELA 52
#define ESTACIONAMENTO 53

Servo meuservo;

int pos = 0;

int conta = 0;
int numero;

void contagem(){

  for (pos = 0; pos <= 180; pos += 1) {
    meuservo.write(pos);
    delay(15); 
  }

  digitalWrite(CANCELA, HIGH);

  //1
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  delay(500);

  //2
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, HIGH);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  delay(500);

  //3
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, HIGH);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  delay(500);

  //4
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, HIGH);
  digitalWrite(DISP4, LOW);

  delay(500);

  //5
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, HIGH);
  digitalWrite(DISP4, LOW);

  delay(500);

  //6
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, HIGH);
  digitalWrite(DISP3, HIGH);
  digitalWrite(DISP4, LOW);


  delay(500);

   //7
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, HIGH);
  digitalWrite(DISP3, HIGH);
  digitalWrite(DISP4, LOW);


  delay(500);

  //8
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, HIGH);


  delay(500);

  //9
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, HIGH);

  delay(500);

  //0
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  delay(500);  

  digitalWrite(CANCELA, LOW);

  for (pos = 180; pos >= 0; pos -= 1) {
    meuservo.write(pos);
    delay(15);
  }
}

void contagemRegressiva(){ 

  for (pos = 0; pos <= 180; pos += 1) {
    meuservo.write(pos);
    delay(15); 
  }

  digitalWrite(CANCELA, HIGH);

    //9
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, HIGH);

  delay(500);

  //8
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, HIGH);


  delay(500);

   //7
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, HIGH);
  digitalWrite(DISP3, HIGH);
  digitalWrite(DISP4, LOW);


  delay(500);

  //6
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, HIGH);
  digitalWrite(DISP3, HIGH);
  digitalWrite(DISP4, LOW);


  delay(500);

  //5
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, HIGH);
  digitalWrite(DISP4, LOW);

  delay(500);

  //4
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, HIGH);
  digitalWrite(DISP4, LOW);

  delay(500);

  //3
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, HIGH);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  delay(500);

  //2
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, HIGH);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  delay(500);

  //1
  digitalWrite(DISP1, HIGH);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  delay(500);

  //0
  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  delay(500); 

   digitalWrite(CANCELA, LOW);

   for (pos = 180; pos >= 0; pos -= 1) {
    meuservo.write(pos);
    delay(15);
  } 
}

void incrementa(){

  if(conta >= 0 && conta < 20){
    
    if(digitalRead(SENSORA) == LOW){
      conta++;
      contagem();
      delay(300);
  }
}

}

void decrementa(){

  if(conta >= 1 && conta < 21){
    
    if(digitalRead(SENSORB) == LOW){
      conta--;
      contagemRegressiva();
      delay(300);
  }
}

}

void inicio(){

  lcd.setCursor(6, 1);
  lcd.print("VAGAS");

  lcd.setCursor(0, 2);
  lcd.print("DISPONIVEIS");
  
}

void lotado(){

  lcd.setCursor(6, 1);
  lcd.print("     ");
  
  lcd.setCursor(0, 2);
  lcd.print(" LOTADO    ");
  
}

void vagas(){

//20

  if(conta == 0){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, HIGH);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED1, LOW);
      
  }

  //19
  if(conta == 1){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, HIGH);  

    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, LOW);   
  }

   //18
  if(conta == 2){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, HIGH);

    digitalWrite(LED2, HIGH);
    digitalWrite(LED3, LOW);
}

//17
  if(conta == 3){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, HIGH);
    digitalWrite(DISP11, HIGH);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED3, HIGH);
    digitalWrite(LED4, LOW);
}

//16
  if(conta == 4){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, HIGH);
    digitalWrite(DISP11, HIGH);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED4, HIGH);
    digitalWrite(LED5, LOW);
}


//15
  if(conta == 5){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, HIGH);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED5, HIGH);
    digitalWrite(LED6, LOW);
}

//14
  if(conta == 6){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, HIGH);
    digitalWrite(DISP12, LOW); 

    digitalWrite(LED6, HIGH);
    digitalWrite(LED7, LOW);
}

//13
  if(conta == 7){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, HIGH);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW); 

    digitalWrite(LED7, HIGH);
    digitalWrite(LED8, LOW);
}

//12
  if(conta == 8){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, HIGH);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED8, HIGH);
    digitalWrite(LED9, LOW);
}

//11
  if(conta == 9){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW); 

    digitalWrite(LED9, HIGH);
    digitalWrite(LED10, LOW);
}

//10
  if(conta == 10){

    digitalWrite(DISP5, HIGH);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED10, HIGH);
    digitalWrite(LED11, LOW);
}

//09
  if(conta == 11){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, HIGH);

    digitalWrite(LED11, HIGH);
    digitalWrite(LED12, LOW);
}

//08
  if(conta == 12){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, HIGH);

    digitalWrite(LED12, HIGH);
    digitalWrite(LED13, LOW);
}

//07
  if(conta == 13){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, HIGH);
    digitalWrite(DISP11, HIGH);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED13, HIGH);
    digitalWrite(LED14, LOW);
}

//06
  if(conta == 14){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, HIGH);
    digitalWrite(DISP11, HIGH);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED14, HIGH);
    digitalWrite(LED15, LOW);
}

//05
  if(conta == 15){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, HIGH);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED15, HIGH);
    digitalWrite(LED16, LOW);
}

//04
  if(conta == 16){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, HIGH);
    digitalWrite(DISP12, LOW); 

    digitalWrite(LED16, HIGH);
    digitalWrite(LED17, LOW);
}

//03
  if(conta == 17){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, HIGH);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED17, HIGH);
    digitalWrite(LED18, LOW);
}

//02
  if(conta == 18){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, HIGH);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW); 

    digitalWrite(LED18, HIGH);
    digitalWrite(LED19, LOW);
}

//01
  if(conta == 19){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, HIGH);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW); 

    digitalWrite(LED19, HIGH);
    digitalWrite(LED20, LOW);
}

//00
  if(conta == 20){

    digitalWrite(DISP5, LOW);
    digitalWrite(DISP6, LOW);
    digitalWrite(DISP7, LOW);
    digitalWrite(DISP8, LOW);

    digitalWrite(DISP9, LOW);
    digitalWrite(DISP10, LOW);
    digitalWrite(DISP11, LOW);
    digitalWrite(DISP12, LOW);

    digitalWrite(LED20, HIGH);  
}

}

void setup() {

  pinMode(DISP5, OUTPUT);
  pinMode(DISP6, OUTPUT);
  pinMode(DISP7, OUTPUT);
  pinMode(DISP8, OUTPUT);

  pinMode(SENSORA, INPUT);
  pinMode(SENSORB, INPUT);

  pinMode(DISP1, OUTPUT);
  pinMode(DISP2, OUTPUT);
  pinMode(DISP3, OUTPUT);
  pinMode(DISP4, OUTPUT);

  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED7, OUTPUT);
  pinMode(LED8, OUTPUT);
  pinMode(LED9, OUTPUT);
  pinMode(LED10, OUTPUT);

  pinMode(LED11, OUTPUT);
  pinMode(LED12, OUTPUT);
  pinMode(LED13, OUTPUT);
  pinMode(LED14, OUTPUT);
  pinMode(LED15, OUTPUT);
  pinMode(LED16, OUTPUT);
  pinMode(LED17, OUTPUT);
  pinMode(LED18, OUTPUT);
  pinMode(LED19, OUTPUT);
  pinMode(LED20, OUTPUT);

  pinMode(CANCELA, OUTPUT);
  pinMode(ESTACIONAMENTO, OUTPUT);

  digitalWrite(DISP5, LOW);
  digitalWrite(DISP6, LOW);
  digitalWrite(DISP7, LOW);
  digitalWrite(DISP8, LOW);
  
  digitalWrite(SENSORA, HIGH);
  digitalWrite(SENSORB, HIGH);

  digitalWrite(DISP1, LOW);
  digitalWrite(DISP2, LOW);
  digitalWrite(DISP3, LOW);
  digitalWrite(DISP4, LOW);

  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
  digitalWrite(LED6, LOW);
  digitalWrite(LED7, LOW);
  digitalWrite(LED8, LOW);
  digitalWrite(LED9, LOW);
  digitalWrite(LED10, LOW);

  digitalWrite(LED11, LOW);
  digitalWrite(LED12, LOW);
  digitalWrite(LED13, LOW);
  digitalWrite(LED14, LOW);
  digitalWrite(LED15, LOW);
  digitalWrite(LED16, LOW);
  digitalWrite(LED17, LOW);
  digitalWrite(LED18, LOW);

  digitalWrite(CANCELA, LOW);
  digitalWrite(ESTACIONAMENTO, LOW);

  meuservo.attach(6);

  lcd.begin(20, 4);
 
}

void loop() {

  vagas();
  incrementa();
  decrementa();

  digitalWrite(ESTACIONAMENTO, LOW);
  delay(100);
  digitalWrite(ESTACIONAMENTO, HIGH);
  delay(100);

  if(conta < 20){
    
    inicio();
    
  }else if(conta == 20){
    lotado();
  }
  

  
}
