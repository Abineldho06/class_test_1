
import 'dart:io';

List<int> mainlist = [];

List odd = [];

List even = [];

void main(){

  for(;;){
    stdout.write("Enter the number or 0 to exit: ");
    int number = int.parse(stdin.readLineSync()!);

    if(number==0){
      break;
    }
    mainlist.add(number);
  }

  for(int i=0;i<mainlist.length;i++){
    if(mainlist[i]%2==0){
      even.add(mainlist[i]);
    }else{
      odd.add(mainlist[i]);
    }
  }

  int largest = mainlist[0];

  for(int i=0;i<mainlist.length;i++){
    if(largest<mainlist[i]){
      largest=mainlist[i];
    }
  }

  print("The List is $mainlist");
  print("Even numbers in Main List: $even");
  print("Odd numbers in Mian List: $odd");
  print("The largest number in the List is: $largest");
}