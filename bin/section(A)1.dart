void main(){

  Map details = {"course":"Dart Basics","duration":30,"isFree":true};

  for(int i=0;i<details.length;i++){
  print("${details[i][details.keys]} ${details[i][details.values]}");
  }
} 