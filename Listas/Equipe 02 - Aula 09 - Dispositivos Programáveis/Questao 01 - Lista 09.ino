void setup()
{
  pinMode(9, OUTPUT);
}

void loop()
{
  analogWrite(9, 0);
  delay(500);
  
  analogWrite(9, 63.75);
  delay(500);
  
  analogWrite(9, 127.5);
  delay(500);
  
  analogWrite(9, 191.25);
  delay(500);
  
  analogWrite(9, 255);
  delay(500);
}