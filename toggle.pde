void algoritmo(int x){
  switch(x){
    case 0:
      for (int i = 0; i<complete.length; i +=1){
        complete[i]=2*i;
      }
      break;
    case 1:
      for (int i = 0; i<complete.length; i +=1){
        complete[i]=(2*i)+1;
      }
      break;
    case 2:
      for (int i = 0; i<complete.length; i +=1){
        complete[i]=int(pow(2,i));
      }
      break;
    case 3: 
      for (int i = 0; i<complete.length; i +=1){
        complete[i]=2*i;
      }
      break;
    case 4:
      complete[0]=2;
      complete[1]=3;
      complete[2]=5;
      complete[3]=8;
      complete[4]=13;
    break;
  }
}
