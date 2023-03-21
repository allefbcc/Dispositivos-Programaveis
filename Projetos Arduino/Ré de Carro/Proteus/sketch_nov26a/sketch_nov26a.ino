#define LEDVERDE 4
#define LEDAMAR 5
#define LEDVERM 6

#define buzzer 8

const int trigger = 2;
const int echo = 3;

long duracao;
float dist;

void setup()
{
  
  pinMode(trigger, OUTPUT);
  pinMode(echo, INPUT);
  
  Serial.begin(9600);
  
  pinMode(LEDVERDE, OUTPUT);
  pinMode(LEDAMAR, OUTPUT);
  pinMode(LEDVERM, OUTPUT);
  
  digitalWrite(LEDVERDE, LOW);
  digitalWrite(LEDAMAR, LOW);
  digitalWrite(LEDVERM, LOW);
}

void loop()
{
    
  digitalWrite(trigger, LOW);
  delayMicroseconds(5);
  
  digitalWrite(trigger, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigger, LOW);
  
  duracao = pulseIn(echo, HIGH);
  
  dist = duracao * 0.034 / 2;
  
  //Apaga Leds se sair do alcance
  if(dist < 10){
    
    digitalWrite(LEDVERDE, LOW);
    digitalWrite(LEDAMAR, LOW);
    digitalWrite(LEDVERM, LOW);
    
  }
  
  //LED VERMELHO - CURTA DISTANCIA
  if(dist >= 10 && dist < 150){
    
    digitalWrite(LEDVERDE, LOW);
    digitalWrite(LEDAMAR, LOW);
    digitalWrite(LEDVERM, HIGH);
    tone(buzzer, 3000, 100);
  }
  
  //LDE AMARELO - MÉDIA DISTANCIA
  if(dist >= 150 && dist < 250){
    
    digitalWrite(LEDVERDE, LOW);
    digitalWrite(LEDAMAR, HIGH);
    digitalWrite(LEDVERM, LOW);
    tone(buzzer, 2500, 100);
  }
  
  //LED VERDE - LONGA DISTANCIA
  if(dist >= 250 && dist <= 300){
    
    digitalWrite(LEDVERDE, HIGH);
    digitalWrite(LEDAMAR, LOW);
    digitalWrite(LEDVERM, LOW);
    tone(buzzer, 3000, 100);
    
  }
  
  //Apaga Leds se sair do alcance
  if(dist > 300){
    
    digitalWrite(LEDVERDE, LOW);
    digitalWrite(LEDAMAR, LOW);
    digitalWrite(LEDVERM, LOW);
    
  }
   
  Serial.print("Distancia em cm: ");
  Serial.println(dist);
 
  delay(100);
  
 
}
