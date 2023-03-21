//define os LEDS e o Sensor para cada pino
#define LM35 A0
#define LED1 10
#define LED2 9
#define LED3 8
#define LED4 7

void setup()
{
  //inicia o serial
  Serial.begin(9600);
  
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
 
}

void loop()
{
  
  // cria a variável leitor que vai guardar a leitura analógica do sensor
  float leitor = analogRead(LM35);
  
  // cria a variável tensao que vai guardar a leitura de tensao do sensor
  float tensao = ((leitor) * 5 / (1023));
  
  // cria a variável temperatura que vai guardar o valor da temperatura
  float temperatura = tensao / 0.01;
  
  //condicao para ascender o LED1 quando o alarme chegar no nivel 01
  if(temperatura >= 24 && temperatura <= 26){
    digitalWrite(LED1, HIGH);
    
    // Mostra mensagem de nivel 01 acionado e informa o nivel de temperaura
    Serial.println("################################");
    Serial.println("ALARME NIVEL: 01");
    Serial.println("TEMPERATURA BAIXA");
    
    //condicao para apagar o LED1
  }else if(temperatura < 24){
    digitalWrite(LED1, LOW);
  }
  
  //condicao para ascender o LED2 quando o alarme chegar no nivel 02
  if(temperatura > 26 && temperatura <= 28.84){
    digitalWrite(LED2, HIGH);
    digitalWrite(LED1, LOW);
    
    // Mostra mensagem de nivel 02 acionado e informa o nivel de temperaura
    Serial.println("################################");
    Serial.println("ALARME NIVEL: 02");
    Serial.println("TEMPERATURA MEDIA");
    
    //condicao para apagar o LED2
  }else if(temperatura < 28.84){
    digitalWrite(LED2, LOW);
  }
  
  //condicao para ascender todos os LEDS quando o alarme chegar no nivel 03, que é o nivel mais alto
  if(temperatura > 28.84){
    digitalWrite(LED3, HIGH);
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    
    //condicao para piscar o LED4 de situacao de alarme
    digitalWrite(LED4, HIGH);
    delay(100);
    digitalWrite(LED4, LOW);
    delay(100);
    
    // Mostra mensagem de nivel 03 acionado e informa o nivel de temperaura e a situacao de alarme acionada
    Serial.println("################################");
    Serial.println("ALARME NIVEL: 03");
    Serial.println("TEMPERATURA ALTA");
    Serial.println("SITUACAO DE ALARME");
    
    //condicao para apagar o LED3 e LED4
  }else if(temperatura < 28.84){
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
  }
  
  
  //Informa a temperatura no momento
  Serial.print("TEMPERATURA ATUAL: ");
  Serial.print(temperatura);
  Serial.println(" Celsius");
  
  
  
}