
void setup()
{
 
  pinMode(9, OUTPUT);
}

void loop()
{ 
  
  for(int x = 0; x <= 255; x+= 10){
    analogWrite(9, x);
    delay(200);
    
  }
  
  for(int y = 255; y >= 0; y-= 10){
    analogWrite(9, y);
    delay(200);
    
  }
  
}