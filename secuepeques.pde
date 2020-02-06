void secuenciagrande(int y[]){
     for (int i = 0; i < y.length; i = i+1){
        switch(y[i]){
        case 0:
          image(circulo,(i+1)*pixelesX/(y.length+1),2*pixelesY/5); 
          break;
        case 1:
          image(cuadrado,(i+1)*pixelesX/(y.length+1),2*pixelesY/5);
          break;
        case 2:
          image(triangulo,(i+1)*pixelesX/(y.length+1),2*pixelesY/5); 
          break;        
        case 3:
          image(rombo,(i+1)*pixelesX/(y.length+1),2*pixelesY/5); 
          break;
        }
     }
}
void secuenciapequena00(int y[]){
     for (int i = 0; i < y.length; i = i+1){
        switch(y[i]){
        case 0:
          image(circulo,((3*pixelesX/7)*(i+1))/(y.length+1),1*pixelesY/5); 
          break;
        case 1:
          image(cuadrado,((3*pixelesX/7)*(i+1))/(y.length+1),1*pixelesY/5);
          break;
        case 2:
          image(triangulo,((3*pixelesX/7)*(i+1))/(y.length+1),1*pixelesY/5); 
          break;        
        case 3:
          image(rombo,((3*pixelesX/7)*(i+1))/(y.length+1),1*pixelesY/5); 
          break;
        }
      }
}
void secuenciapequena01(int y[]){
     for (int i = 0; i < y.length; i = i+1){
        switch(y[i]){
        case 0:
          image(circulo,((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),1*pixelesY/5); 
          break;
        case 1:
          image(cuadrado,((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),1*pixelesY/5);
          break;
        case 2:
          image(triangulo,((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),1*pixelesY/5); 
          break;        
        case 3:
          image(rombo,((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),1*pixelesY/5); 
          break;
        }
      }
}
void secuenciapequena02(int y[]){
     for (int i = 0; i < y.length; i = i+1){
        switch(y[i]){
        case 0:
          image(circulo,((3*pixelesX/7)*(i+1))/(y.length+1),5*pixelesY/7); 
          break;
        case 1:
          image(cuadrado,((3*pixelesX/7)*(i+1))/(y.length+1),5*pixelesY/7);
          break;
        case 2:
          image(triangulo,((3*pixelesX/7)*(i+1))/(y.length+1),5*pixelesY/7); 
          break;        
        case 3:
          image(rombo,((3*pixelesX/7)*(i+1))/(y.length+1),5*pixelesY/7); 
          break;
        }
      }
}
void secuenciapequena03(int y[]){
     for (int i = 0; i < y.length; i = i+1){
        switch(y[i]){
        case 0:
          image(circulo,((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),5*pixelesY/7); 
          break;
        case 1:
          image(cuadrado,((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),5*pixelesY/7);
          break;
        case 2:
          image(triangulo,((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),5*pixelesY/7); 
          break;        
        case 3:
          image(rombo,((3*pixelesX/7)*(i+1))/(y.length+1)+(3*pixelesX/7),5*pixelesY/7); 
          break;
        }
      }
}
