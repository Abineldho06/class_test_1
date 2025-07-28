
void main(){

  findLargest([21,89,7,24,100]);
  
}

findLargest(List<num> values){
  
  num largest = values[0];

  for(int i=0;i<values.length;i++){
    if(largest<values[i]){
      largest=values[i];
    }
  }
  print(largest);
}