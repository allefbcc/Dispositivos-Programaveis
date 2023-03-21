
  int contador = 0x00;                        //variavel para incrementar

 void interrupt()
 {
    if(T0IF_bit)                               // verifica se houve estouro
    {
       contador++;                        // acrescenta
       TMR0 = 0x06;                       //reinicia o TMR0
       
       T0IF_bit = 0x00;          //limpa a flag
    }
  }

void main() {

     OPTION_REG =0X81;      // DESABILITA RESISTORES DE PULL_UP INTERNOS
                             //PRESCALER para 1:4
                             
     GIE_bit =  0X01;        //HABILITA INTERRUPÇÃO GLOBAL
     PEIE_bit = 0X01;       //HABILITA A INTERRUPÇÃO POR PERIFERICOS
     T0IE_bit = 0X01;       //HABILITA  INTERRUPÃO POR ESTOURO DO TMR0

     TMR0 = 0X06;            // INICIA A CONTAGEM EM 6
     
     TRISB.RB4 =0X00;        // SAIDA DIGITAL
     RB4_bit  =0x00;         // INICIA RB4 EM LOW
     
  while(1)
  {
      if( contador == 250)
      {
        RB4_bit = ~RB4_bit;         // inverte estado do
        contador = 0x00;
      }
  
  
  }

}