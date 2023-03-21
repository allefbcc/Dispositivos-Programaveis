// Define nomes para representar cada pino
#define B1 13
#define B2 12
#define AGUARDA 100

#define SA 5
#define SB 6
#define SC 7
#define DD 8
#define SE 9
#define SF 10
#define SG 11

//sub-rotina com a condição para mostrar o numero 1 quando apertar B1
void num1() {
  if(digitalRead(B1) == LOW) {
    
    //LEDS com as definições para aparecer o numero 1 no display de 7 segmentos
    digitalWrite(SA, LOW);
    digitalWrite(SB, HIGH);
    digitalWrite(SC, HIGH);
    digitalWrite(DD, LOW);
    digitalWrite(SE, LOW);
    digitalWrite(SF, LOW);
    digitalWrite(SG, LOW);
    delay(2000);
  }
  
}

void num2() {
  
  //sub-rotina com a condição para mostrar o numero 2 quando apertar B2
  if(digitalRead(B2) == LOW){
    
    //LEDS com as definições para aparecer o numero 2 no display de 7 segmentos
    digitalWrite(SA, HIGH);
    digitalWrite(SB, HIGH);
    digitalWrite(SC, LOW);
    digitalWrite(DD, HIGH);
    digitalWrite(SE, HIGH);
    digitalWrite(SF, LOW);
    digitalWrite(SG, HIGH);
    delay(2000);
  }
  
}

//Sub-rotina com a interação que vai ficar sendo exibida enquanto nenhum dos dois botões são pressioados
void interacao() {
  
  //LEDS com as definições para aparecer a interação no display de 7 segmentos
  digitalWrite(SA, HIGH);
  delay(AGUARDA);
  digitalWrite(SB, HIGH);
  delay(AGUARDA);
  digitalWrite(SC, HIGH);
  delay(AGUARDA);
  digitalWrite(DD, HIGH);
  delay(AGUARDA);
  digitalWrite(SE, HIGH);
  delay(AGUARDA);
  digitalWrite(SF, HIGH);
  delay(AGUARDA);
  digitalWrite(SG, LOW);
  delay(AGUARDA);
  
  digitalWrite(SA, LOW);
  delay(AGUARDA);
  digitalWrite(SB, LOW);
  delay(AGUARDA);
  digitalWrite(SC, LOW);
  delay(AGUARDA);
  digitalWrite(DD, LOW);
  delay(AGUARDA);
  digitalWrite(SE, LOW);
  delay(AGUARDA);
  digitalWrite(SF, LOW);
  delay(AGUARDA);
  digitalWrite(SG, LOW);
  delay(AGUARDA);
  
}

  
void setup() {
  
  //Definições dos pinos B1 e B2 como entrada
  pinMode(B1, INPUT);
  pinMode(B2, INPUT);
  
  //escreve nos pinos B1 e B2 como ligado
  digitalWrite(B1, HIGH);
  digitalWrite(B2, HIGH);
  
  //Definições dos pinos do display para formar os numeros como saída
  pinMode(SA, OUTPUT);
  pinMode(SB, OUTPUT);
  pinMode(SC, OUTPUT);
  pinMode(DD, OUTPUT);
  pinMode(SE, OUTPUT);
  pinMode(SF, OUTPUT);
  pinMode(SG, OUTPUT);
  
  //Escreve nos pinos do display para formar os numeros como desligados
  digitalWrite(SA, LOW);
  digitalWrite(SB, LOW);
  digitalWrite(SC, LOW);
  digitalWrite(DD, LOW);
  digitalWrite(SE, LOW);
  digitalWrite(SF, LOW);
  digitalWrite(SG, LOW);
  
}

void loop() {
  
  interacao(); //chama a sub-rotina interação
  num1(); //chama a sub-rotina num1
  num2(); //chama a sub-rotina num2
  
}