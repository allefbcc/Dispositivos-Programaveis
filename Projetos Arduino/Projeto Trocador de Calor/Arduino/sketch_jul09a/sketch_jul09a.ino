#define LIGA 13
#define DESLIGA 12

#define PROCESSO 7
#define V1 8
#define M1 9
#define M2 11

#define P25 6
#define P50 5
#define P75 4
#define P100 3


#define TMP36 A0

void setup() {

  pinMode(LIGA, INPUT);
  pinMode(DESLIGA, INPUT);

  pinMode(PROCESSO, OUTPUT);
  pinMode(V1, OUTPUT);
  pinMode(M1, OUTPUT);
  pinMode(M2, OUTPUT);

  digitalWrite(LIGA, HIGH);
  digitalWrite(DESLIGA, HIGH);

  digitalWrite(PROCESSO, LOW);
  digitalWrite(V1, LOW);
  digitalWrite(M1, LOW);
  digitalWrite(M2, LOW);

  digitalWrite(P25, LOW);
  digitalWrite(P50, LOW);
  digitalWrite(P75, LOW);
  digitalWrite(P100, LOW);

}

void loop() {

  float leitor = analogRead(TMP36);
  float tensao = ((leitor) * 5 / (1023));
  float temperatura = (tensao / 0.01) - 50;

  if(digitalRead(DESLIGA) == LOW){
    
     digitalWrite(PROCESSO, LOW);
     digitalWrite(V1, LOW);
     digitalWrite(M1, LOW);
     digitalWrite(M2, LOW);

     digitalWrite(P25, LOW);
     digitalWrite(P50, LOW);
     digitalWrite(P75, LOW);
     digitalWrite(P100, LOW);
  }

  if(digitalRead(LIGA) == LOW){
    if(digitalRead(DESLIGA) != LOW){
      digitalWrite(PROCESSO, HIGH);
      digitalWrite(V1, HIGH);
    }
    
    if(digitalRead(V1) == HIGH){
      if(digitalRead(DESLIGA) != LOW){
        digitalWrite(M1, HIGH);
      }
        
      }
      
  }

 
    if(temperatura < 25){
      if(digitalRead(DESLIGA) != LOW){
        
        digitalWrite(P25, LOW);
        digitalWrite(P50, LOW);
        digitalWrite(P75, LOW);
        digitalWrite(P100, LOW);

        digitalWrite(M2, LOW);
      }
  
  }

  else if(temperatura > 25 and temperatura < 50){

     if(digitalRead(DESLIGA) != LOW){

        digitalWrite(P25, HIGH);
        digitalWrite(P50, LOW);
        digitalWrite(P75, LOW);
        digitalWrite(P100, LOW);

        digitalWrite(M2, LOW);

    }  
  }

  else if(temperatura >= 50 and temperatura < 75){

     if(digitalRead(DESLIGA) != LOW){

        digitalWrite(P25, LOW);
        digitalWrite(P50, HIGH);
        digitalWrite(P75, LOW);
        digitalWrite(P100, LOW);

        digitalWrite(M2, LOW);

    }
  }

  else if(temperatura >= 75 and temperatura < 100){

     if(digitalRead(DESLIGA) != LOW){

        digitalWrite(P25, LOW);
        digitalWrite(P50, LOW);
        digitalWrite(P75, HIGH);
        digitalWrite(P100, LOW);

        digitalWrite(M2, LOW);
          
     }
  }

   else if(temperatura >= 100){
    
      if(digitalRead(DESLIGA) != LOW){

        digitalWrite(P25, LOW);
        digitalWrite(P50, LOW);
        digitalWrite(P75, LOW);
        digitalWrite(P100, HIGH);

        digitalWrite(M2, HIGH);
    }
        
    }
  }
