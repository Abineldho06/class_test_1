import 'dart:io';

void main(){

  int range = 10;
 
  for(int i=1;i<range;i++){
    for(int j=1;j<=range/2;j++){
      if(i>=j && j<=range-i){
        stdout.write("* ");
      }else{
        stdout.write("  ");
      }
    }
    print("");
  }
}