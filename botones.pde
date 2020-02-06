void botones(){
  stroke(0);
  for (int i = 0; i<2; i = i+1){
    for (int w = 0; w<2; w = w+1){
      fill(255,255*i,255*w);
      rect(i*3*pixelesX/7,w*pixelesY/2,3*pixelesX/7,pixelesY/2);
      rect(6*pixelesX/7,(i+(w*2))*pixelesY/4,pixelesX/7,pixelesY/4);
    }
  }
} 
void botones2(){
  stroke(0);
  for (int i = 0; i<2; i = i+1){
    for (int w = 0; w<2; w = w+1){
      fill(255,255*i,255*w);
      rect(6*pixelesX/7,(i+(w*2))*pixelesY/4,pixelesX/7,pixelesY/4);
    }
  }
} 
boolean botonp1(){
  if( mouseX >= 6*pixelesX/7 && mouseX <= pixelesX && mouseY>=0 && mouseY <=pixelesY/4){
    return true;
  }
  else{
    return false;
  }
}
boolean botonp2(){
  if( mouseX >= 6*pixelesX/7 && mouseX <= pixelesX && mouseY>=pixelesY/4 && mouseY <=2*pixelesY/4){
    return true;
  }
  else{
    return false;
  }
}
boolean botonp3(){
  if( mouseX >= 6*pixelesX/7 && mouseX <= pixelesX && mouseY>=2*pixelesY/4 && mouseY <=3*pixelesY/4){
    return true;
  }
  else{
    return false;
  }
}
boolean botonp4(){
  if( mouseX >= 6*pixelesX/7 && mouseX <= pixelesX && mouseY>=3*pixelesY/4 && mouseY <=pixelesY){
    return true;
  }
  else{
    return false;
  }
}
void actualizar(){
  if(botonp1()== true){
    boton1 = true;
    boton2 = false;
    boton3 = false;
    boton4 = false;
  }
  else if(botonp2()==true){
    boton1 = false;
    boton2 = true;
    boton3 = false;
    boton4 = false;
  }
  else if(botonp3()==true){
    boton1 = false;
    boton2 = false;
    boton3 = true;
    boton4 = false;
  }
  else if(botonp4()==true){
    boton1 = false;
    boton2 = false;
    boton3 = false;
    boton4 = true;
  }
  else{
    boton1 = boton2 = boton3 = boton4 =false;
  }
}
void correcto(int x) {
  if (x == 0){
    if (boton1 == true){
      correcto = true;
      }
    else {
      correcto=false;
    }
  }
  else if (x == 1){
    if (boton2 == true){
      correcto = true;
      }
     else {
       correcto=false;
     }
  }
  else if (x == 2){
     if (boton3 == true){
       correcto = true;
      }
     else {
     correcto=false;
     }
  }
  else if (x == 3){
      if (boton4 == true){
        correcto = true;
      }
      else {
       correcto=false;
      }
  }
  else {
    correcto = false;
  }
}
