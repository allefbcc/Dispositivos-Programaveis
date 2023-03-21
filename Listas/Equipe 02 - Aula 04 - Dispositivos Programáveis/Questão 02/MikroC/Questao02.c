void ConfiguraTimer(){
T0CON = 0b00000110;
TMR0L = 0xF7;
TMR0H = 0xC2;
INTCON.TMR0IF = 0;
T0CON.TMR0ON = 1;
}


void main() {

int cont = 0;
TRISD = 0;
PORTD = 0;

ConfiguraTimer();

while(1){

if(INTCON.TMR0IF == 1){

TMR0L = 0xF7;
TMR0H = 0xC2;
INTCON.TMR0IF = 0;
cont++;

if(cont == 5){

PORTD.RD0=~LATD.RD0;
cont = 0;

}

}
}

}

