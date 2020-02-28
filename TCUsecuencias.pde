import java.util.Arrays;
long tiempo = 0;
int lavariable = 1;
int secococo[] = new int[4];
long tiempoactual = 0;
long tiempoduracion = 1500;//enmilisegundos
int i = 0;
int[] complete = new int[5];
int[] respondio = new int[4];
char string;
int cuadro = 0;
int numsecuencia=3;
int estadopartida = 0;
int contadorfuncion = 0;
int figura;
int pixelesX=1366;
int pixelesY=768;
int longitud;
float puntaje;
boolean correcto = false;
boolean incorrecto = false;
int buenas = 1;
int malas = 0;
int y;
int a;
int[] secuencias;
int[] peque1;
PImage circulo;
PImage cuadrado;
PImage triangulo;
PImage rombo;
PImage check;
PImage equis;
int lista1[];
int lista2[];
boolean boton1=false;
boolean boton2=false;
boolean boton3=false;
boolean boton4=false;
int tiempoespera = 3000;
int tiempobase;
void settings() {
  fullScreen();
}

void setup(){
  circulo = loadImage("circulo.png");
  circulo.resize(0,50);
  cuadrado = loadImage("cuadrado.png");
  cuadrado.resize(0,50);
  triangulo = loadImage("triangulo.png");
  triangulo.resize(0,50);
  rombo = loadImage("rombo.png");
  rombo.resize(0,50);
  check  = loadImage("check.png");
  check.resize(0,300);
  equis = loadImage("X.png");
  equis.resize(0,300);
  textSize(64);
}
void draw(){
  tiempo = millis();
  tiempobase = millis();
  switch(estadopartida){
    case 0:
      background(0);
      text("Bienvenido! Instrucciones: Verán una secuencia de objetos, su deber es completar o seleccionar la misma secuencia, presione ENTER para continuar",10,pixelesY/6,pixelesX,pixelesY);
      keyReleased();
      if(key==ENTER){
          estadopartida = 1;
          key = ' ';
        }
      break;
    case 1:
        if (numsecuencia == 8){
            estadopartida = 7;
            break;
        }
        else{
        background(255);
        seoriginal(numsecuencia);
        secuenciagrande(secuencias);
        tiempoactual=tiempo;
        estadopartida = 2;
        break;
        }
    case 2: //estado de espera
        if (tiempo-tiempoactual>tiempoespera){
          estadopartida=3;
        }
        break;
    case 3:
        botones();
        actualizar();
        cuadro = int(random(0,4));
        secuerandom(cuadro);
        correcto(cuadro);
        estadopartida = 4;
    case 4: 
        actualizar();
        correcto(cuadro);
        if(mousePressed){
          if(correcto == true){
            numsecuencia+=1;
            buenas = buenas+1;
            estadopartida=5;
            tiempoactual=tiempo;
          }
          else if (mouseX >= 6*pixelesX/7){
            estadopartida = 6;
            malas = malas+1;
            tiempoactual=tiempo;
          }
          else{
            estadopartida = 4;
            break;
          }
        }
       else{
          estadopartida = 4;
          break;
       }
    case 5:
      background(0);
      actualizar();
      puntaje = (buenas*10-malas);
      image(check,2*pixelesX/5,pixelesY/4);
      if (tiempo-tiempoactual>tiempoespera){
          estadopartida=1;
        }
        break;
    case 6:
      background(255);
      actualizar();
      puntaje = (buenas*10-malas);
      image(equis,2*pixelesX/5,pixelesY/4);
      if (tiempo-tiempoactual>tiempoespera){
          estadopartida=1;
        }
        break;
    case 7:
      background(0);
      String string= "Su puntuación es:"+puntaje+"             Presione ENTER para continuar";
      text(string,10,pixelesY/6,pixelesX,pixelesY);
      if(keyPressed==true){
          estadopartida = 8;
          keyPressed = false;
        }
      else{
        estadopartida = 7;
      }
      break;
    case 8:
      background(0);
      text("Ahora vamos con números!" + "             Presione ENTER para continuar",10,pixelesY/6,pixelesX,pixelesY);
      numsecuencia = 2;
      if(keyPressed == true){
          estadopartida = 9;
      }
      else{
        estadopartida = 8;
      }
      break;
    case 9: 
      if  (numsecuencia<4){
        background(0);
        estadopartida = 10;
        break;
      }
      else {
        background(0);
        estadopartida = 16;
        keyPressed = false;
        break;
      }
    case 10:
      seonumeros(numsecuencia);
      secuenciagrandenum(secuencias);
      estadopartida= 11;
      tiempoactual=tiempo;
      break;
    case 11:
      if (tiempo-tiempoactual>tiempoespera){
        estadopartida=12;
      }
      break;
    case 12:
      botones();
      actualizar();
      cuadro = int(random(0,4));
      secuerandomnum(cuadro);
      correcto(cuadro);
      estadopartida = 13;
      tiempoactual=tiempo;
    case 13:
      actualizar();
      correcto(cuadro);
      if(mousePressed){
        if(correcto == true){
           numsecuencia+=1;
           buenas = buenas+1;
           estadopartida=14;
           tiempoactual=tiempo;
         }
         else if (mouseX >= 6*pixelesX/7){
           estadopartida = 15;
           malas = malas+1;
           tiempoactual=tiempo;
         }
         else{
           estadopartida = 13;
           break;
         }
       }
    else{
       estadopartida = 13;
       break;
    }
    case 14:
      background(0);
      actualizar();
      puntaje = (buenas*10-malas)*(10/6);
      image(check,2*pixelesX/5,pixelesY/4);
      if (tiempo-tiempoactual>tiempoespera){
         estadopartida=9;
      }
        break;
    case 15:
      background(255);
      actualizar();
      puntaje = (buenas*10-malas)*(10/6);
      image(equis,2*pixelesX/5,pixelesY/4);
        if (tiempo-tiempoactual>tiempoespera){
          estadopartida=9;
        }
      break;   
    case 16:
      background(0);
      String string2= "Su puntuación es:"+puntaje + "       Presione ENTER para continuar";
      fill(255);
      text(string2,10,pixelesY/6,pixelesX,pixelesY);
      if(keyPressed==true){
          estadopartida = 17;
          keyPressed = false;
        }
      else{
        estadopartida = 16;
      }
      break;
    case 17:
      background(0);
      text("Ahora vamos a completar secuencias!     Presione ENTER para continuar",10,pixelesY/6,pixelesX,pixelesY);
      numsecuencia = 0;
      if(keyPressed == true){
          estadopartida = 18;
      }
      else{
        estadopartida = 17;
      }
      break;
    case 18:
      if (numsecuencia<3){
        background(0);
        botones2();
        algoritmo(numsecuencia);
        dibujocomplete(int(random(complete.length)));
        cuadro = int(random(0,4));
        secuenciapequecomplete(cuadro);
        estadopartida = 19;
        break;
      }
      else{
        estadopartida = 22;
        break;
      }
    case 19:
      actualizar();
      correcto(cuadro);
      if(mousePressed){
        if(correcto == true){
          numsecuencia+=1;
          buenas = buenas+1;
          estadopartida=20;
          tiempoactual=tiempo;
        }
        else if (mouseX >= 6*pixelesX/7){
          estadopartida = 21;
          malas = malas+1;
          tiempoactual=tiempo;
        }
        else{
          estadopartida = 19;
          break;
        }
      }
      else{
        estadopartida = 19;
        break;
     }
    case 20:
      background(0);
      actualizar();
      puntaje = (buenas*10-malas);
      image(check,2*pixelesX/5,pixelesY/4);
      if (tiempo-tiempoactual>tiempoespera){
          estadopartida=18;
        }
      break;    
    case 21:
      background(255);
      actualizar();
      puntaje = (buenas*10-malas);
      image(equis,2*pixelesX/5,pixelesY/4);
      if (tiempo-tiempoactual>tiempoespera){
          estadopartida=18;
        }
      break;
    case 22:
      background(0);
      puntaje = (buenas*10-malas);
      String string3= "Su puntuación total es:  "+  puntaje  + "      gracias por jugar";
      fill(255);
      text(string3,10,pixelesY/6,pixelesX,pixelesY);
      break;
  }
}
