void main(){



}

findLargest(List values){
  
  List  values = [12,45,7,89,23];

  int a;
  int b;
  int next;

  int largest = 0;

  for(int i=0;i<values.length;i++){
   a = values[i];
   next = i++;
   b = next;

   if(a>b){
    largest=a;
   }else{
    largest=b;
   }
   print(largest);
  }
}