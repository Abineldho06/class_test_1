void main(){

  List values = [5,15,25,35,45];

  num sum = 0;
   num avr = 0;

  for(int i=0;i<values.length;i++){
    sum += values[i];
    avr = sum/values.length;
  }
  print(avr);
}