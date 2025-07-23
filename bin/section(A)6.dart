import 'dart:io';


int row = 4;
int col = 4;
int values = 1;
void main(){
  for(int i=1;i<=row;i++){
    for(int j=1;j<=col;j++){
      if(j>=i){
      stdout.write("$values ");
      values++;
      }else{
        stdout.write("  ");
      }
    }
    print("");
  }
  
}