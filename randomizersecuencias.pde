void secuerandom(int p){
  switch(p){
    case 0:
      secuenciapequena00(secuencias);
      secuenciapequena01(sepeque(secuencias));
      secuenciapequena02(sepeque(secuencias));
      secuenciapequena03(sepeque(secuencias));
      break;
    case 1:
      secuenciapequena01(secuencias);
      secuenciapequena02(sepeque(secuencias));
      secuenciapequena03(sepeque(secuencias));
      secuenciapequena00(sepeque(secuencias));
      break;
    case 2:
      secuenciapequena02(secuencias);
      secuenciapequena03(sepeque(secuencias));
      secuenciapequena00(sepeque(secuencias));
      secuenciapequena01(sepeque(secuencias));
      break;
    case 3:
      secuenciapequena03(secuencias);
      secuenciapequena00(sepeque(secuencias));
      secuenciapequena01(sepeque(secuencias));
      secuenciapequena02(sepeque(secuencias));
      break;
  }
}
void secuerandomnum(int p){
  switch(p){
    case 0:
      secuenciapequenum00(secuencias);
      secuenciapequenum01(sepeque10(secuencias));
      secuenciapequenum02(sepeque10(secuencias));
      secuenciapequenum03(sepeque10(secuencias));
      break;
    case 1:
      secuenciapequenum01(secuencias);
      secuenciapequenum02(sepeque10(secuencias));
      secuenciapequenum03(sepeque10(secuencias));
      secuenciapequenum00(sepeque10(secuencias));
      break;
    case 2:
      secuenciapequenum02(secuencias);
      secuenciapequenum03(sepeque10(secuencias));
      secuenciapequenum00(sepeque10(secuencias));
      secuenciapequenum01(sepeque10(secuencias));
      break;
    case 3:
      secuenciapequenum03(secuencias);
      secuenciapequenum00(sepeque10(secuencias));
      secuenciapequenum01(sepeque10(secuencias));
      secuenciapequenum02(sepeque10(secuencias));
      break;
  }
}

void  secuenciapequecomplete(int variable){
  String stringo[] = new String[4];
  for (int i = 0; i < 4; i = i+1){
      secococo[i]=int(random(0,5*(1+lavariable)));
      if (secococo[i] == lavariable){
        secuenciapequecomplete(variable);
        break;
      } 
  }
  secococo[variable] = lavariable;
  for (int i = 0; i < 4; i = i+1){
      stringo[i] = String.valueOf(secococo[i]);
      fill(0);
      text(stringo[i],(13*pixelesX/14),(((2*i)+1)*pixelesY)/(8));
    }
}
