void dibujocomplete(int quitar){
  String stringo[] = new String[complete.length];
  for (int i = 0; i < complete.length; i = i+1){
    if(i == quitar){
      text("_",(1+i)*(6*pixelesX/7)/(complete.length+1),pixelesY/2);
      lavariable = complete[i];
    }
    else{
      stringo[i] = String.valueOf(complete[i]);
      text(stringo[i],(1+i)*(6*pixelesX/7)/(complete.length+1),pixelesY/2);
    }
  }
}
