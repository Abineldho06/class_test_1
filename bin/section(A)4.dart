import 'dart:io';
void main() {
  
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

    if(number%4==0 && number%6==0){
      print("The $number is QuadHex");
    }else if(number%4==0){
      print("The $number is Quad");
    }else if(number%6==0){
      print("The $number is Hex");
    }else{
      print("$number");
    }
}