char contador1 = 0;
char contador2 = 0;

void display1(char cont){

  switch(cont){
    case 0:
      PORTB.RB0 = 0;
      PORTB.RB1 = 0;
      PORTB.RB2 = 0;
      PORTB.RB3 = 0;
      break;

    case 1:
      PORTB.RB0 = 1;
      PORTB.RB1 = 0;
      PORTB.RB2 = 0;
      PORTB.RB3 = 0;
      break;

    case 2:
      PORTB.RB0 = 0;
      PORTB.RB1 = 1;
      PORTB.RB2 = 0;
      PORTB.RB3 = 0;
      break;

    case 3:
      PORTB.RB0 = 1;
      PORTB.RB1 = 1;
      PORTB.RB2 = 0;
      PORTB.RB3 = 0;
      break;

    case 4:
      PORTB.RB0 = 0;
      PORTB.RB1 = 0;
      PORTB.RB2 = 1;
      PORTB.RB3 = 0;
      break;

    case 5:
      PORTB.RB0 = 1;
      PORTB.RB1 = 0;
      PORTB.RB2 = 1;
      PORTB.RB3 = 0;
      break;

    case 6:
      PORTB.RB0 = 0;
      PORTB.RB1 = 1;
      PORTB.RB2 = 1;
      PORTB.RB3 = 0;
      break;

    case 7:
      PORTB.RB0 = 1;
      PORTB.RB1 = 1;
      PORTB.RB2 = 1;
      PORTB.RB3 = 0;
      break;

    case 8:
      PORTB.RB0 = 0;
      PORTB.RB1 = 0;
      PORTB.RB2 = 0;
      PORTB.RB3 = 1;
      break;

    case 9:
      PORTB.RB0 = 1;
      PORTB.RB1 = 0;
      PORTB.RB2 = 0;
      PORTB.RB3 = 1;
      break;
  }
}

void display2(char cont){
  switch(cont){
    case 0:
      PORTB.RB4 = 0;
      PORTB.RB5 = 0;
      PORTB.RB6 = 0;
      PORTB.RB7 = 0;
      break;

    case 1:
      PORTB.RB4 = 1;
      PORTB.RB5 = 0;
      PORTB.RB6 = 0;
      PORTB.RB7 = 0;
      break;

    case 2:
      PORTB.RB4 = 0;
      PORTB.RB5 = 1;
      PORTB.RB6 = 0;
      PORTB.RB7 = 0;
      break;

    case 3:
      PORTB.RB4 = 1;
      PORTB.RB5 = 1;
      PORTB.RB6 = 0;
      PORTB.RB7 = 0;
      break;

    case 4:
      PORTB.RB4 = 0;
      PORTB.RB5 = 0;
      PORTB.RB6 = 1;
      PORTB.RB7 = 0;
      break;

    case 5:
      PORTB.RB4 = 1;
      PORTB.RB5 = 0;
      PORTB.RB6 = 1;
      PORTB.RB7 = 0;
      break;

    case 6:
      PORTB.RB4 = 0;
      PORTB.RB5 = 1;
      PORTB.RB6 = 1;
      PORTB.RB7 = 0;
      break;

    case 7:
      PORTB.RB4 = 1;
      PORTB.RB5 = 1;
      PORTB.RB6 = 1;
      PORTB.RB7 = 0;
      break;

    case 8:
      PORTB.RB4 = 0;
      PORTB.RB5 = 0;
      PORTB.RB6 = 0;
      PORTB.RB7 = 1;
      break;

    case 9:
      PORTB.RB4 = 1;
      PORTB.RB5 = 0;
      PORTB.RB6 = 0;
      PORTB.RB7 = 1;
      break;
}

}

void main() {

  TRISB = 0b00000000;
  PORTB = 0b00000000;

  while(1){
          
    contador2++;
    
    display1(contador1);
    display2(contador2);


    if(contador2 == 10){

      contador1++;
      contador2 = 0;

        display1(contador1);
        display2(contador2);

            if(contador1 == 10){

            contador1 = 0;
            display1(contador1);
            }
  }

       delay_ms(1000);
  }

}