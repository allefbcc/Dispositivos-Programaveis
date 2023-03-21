
int LED = 7;
int bot = 9;

void setup()
{
  Serial.begin(9600);
  pinMode(LED, OUTPUT);
  pinMode(bot, INPUT);
  
  digitalWrite(bot, HIGH);
  
}

void loop()
{
  
  char letra;

  letra = Serial.read();
  
  if(letra == 'A'){
    
    digitalWrite(LED, HIGH);
    Serial.println("Led acionado pela serial monitor");
   
}
    if(digitalRead(bot) == LOW){
      digitalWrite(LED, HIGH);
      Serial.println(" Led acionado pelo botao");
      delay(200);
    }
  
  if(letra == 'B'){
    
    digitalWrite(LED, LOW);
    Serial.println("Led apagado");
   
}
  
}