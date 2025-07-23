import 'dart:io';
void main() {
  
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if(number%4==0){
    if(number%6==0 && number%4==0){
    print("$number is QuadHex");
    }else{
    print("$number is Quad");
    }
  }else if(number%6==0){
    if(number%6==0 && number%4==0){
    print("$number is QuadHex");
    }else{
    print("$number is Hex");
    }
  }else{
    print("$number is not Quad or Hex");
  }
}