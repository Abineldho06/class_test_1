void main(){

int mul =0;

int range = 50;
  for(int i=1;i<=10;i=i++){
    if(mul<=range){
    mul = i*5;
    i++;
    }else{
      return;
    }
    print(mul);
  }
}