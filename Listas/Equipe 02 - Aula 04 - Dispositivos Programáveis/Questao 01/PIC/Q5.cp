#line 1 "C:/Users/Rameritiofly/Desktop/Disp_prgveis/Q5/PIC/Q5.c"

 int contador = 0x00;

 void interrupt()
 {
 if(T0IF_bit)
 {
 contador++;
 TMR0 = 0x06;

 T0IF_bit = 0x00;
 }
 }

void main() {

 OPTION_REG =0X81;


 GIE_bit = 0X01;
 PEIE_bit = 0X01;
 T0IE_bit = 0X01;

 TMR0 = 0X06;

 TRISB.RB4 =0X00;
 RB4_bit =0x00;

 while(1)
 {
 if( contador == 250)
 {
 RB4_bit = ~RB4_bit;
 contador = 0x00;
 }


 }

}
