#define LED1 7
#define LED2 8
#define LED3 9

void setup()
{
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  

}

void loop()
{
  
  int leitor = analogRead(A0);
  
  if(leitor > 0){
    digitalWrite(LED1, HIGH);
  }else{
    digitalWrite(LED1, LOW);
  }
  
  if(leitor > 255){
    digitalWrite(LED2, HIGH);
  }else{
    digitalWrite(LED2, LOW);
  }
  
  if(leitor > 512){
    digitalWrite(LED3, HIGH);
  }else{
    digitalWrite(LED3, LOW);
  }
  
}