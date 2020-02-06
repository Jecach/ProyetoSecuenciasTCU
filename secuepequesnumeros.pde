void secuenciagrandenum(int y[]){
   String stringo[] = new String[numsecuencia];
   for (int i = 0; i < y.length; i = i+1){
      stringo[i] = String.valueOf(y[i]);
      fill(255);
      textAlign(CENTER);
      //text(stringo[i],(textWidth(stringo[i])*(i-1))+(3*pixelesY/5),pixelesY/2);
      text(stringo[i],(((2*pixelesX/7)*(i+1))/(y.length+1))+(1*pixelesX/3),pixelesY/2);
   }
}
void secuenciapequenum00(int y[]){
   String stringo[] = new String[numsecuencia];
   for (int i = 0; i < y.length; i = i+1){
      stringo[i] = String.valueOf(y[i]);
      fill(0);
      text(stringo[i],((3*pixelesX/7)*(i+1))/(y.length+1),1*pixelesY/5);
   }
}
void secuenciapequenum01(int y[]){
   String stringo[] = new String[numsecuencia];
   for (int i = 0; i < y.length; i = i+1){
      stringo[i] = String.valueOf(y[i]);
      fill(0);
      text(stringo[i],((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),1*pixelesY/5);
   }
}
void secuenciapequenum02(int y[]){
   String stringo[] = new String[numsecuencia];
   for (int i = 0; i < y.length; i = i+1){
      fill(0);
      stringo[i] = String.valueOf(y[i]);
      text(stringo[i],((3*pixelesX/7)*(i+1))/(y.length+1),5*pixelesY/7);
   }
}
void secuenciapequenum03(int y[]){
   String stringo[] = new String[numsecuencia];
   for (int i = 0; i < y.length; i = i+1){
      fill(0);
      stringo[i] = String.valueOf(y[i]);
      text(stringo[i],((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),5*pixelesY/7);
   }
}
