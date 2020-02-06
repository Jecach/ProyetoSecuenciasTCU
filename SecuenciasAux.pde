//genera y guarda en secuencias[] la secuencia original 
void seoriginal(int y){
  secuencias = new int[y];
  for (int i = 0; i < y; i = i+1){
      secuencias[i]=int(random(4));
  }
} 
//genera una secuencia de longitud igual a la secuencia original
int[] sepeque(int w[]){
  longitud = w.length;
  peque1 = new int[longitud];
  for (int i = 0; i < longitud; i = i+1){
    peque1[i]=int(random(0,4));
  }
  if (peque1==secuencias){
    return sepeque(w);
  }
  else
    return peque1;
}
void seonumeros(int y){
  secuencias = new int[y];
  for (int i = 0; i < y; i = i+1){
      secuencias[i]=int(random(0,5)+(numsecuencia)*7);
  }
} 
int[] sepeque10(int w[]){
  longitud = w.length;
  peque1 = new int[longitud];
  for (int i = 0; i < longitud; i = i+1){
    peque1[i]=int(random(0,9)+(numsecuencia)*6);
  }
  if (peque1==secuencias){
    return sepeque(w);
  }
  else
    return peque1;
}
