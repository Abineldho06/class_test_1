void main(){

  Map<dynamic,dynamic> details = {"course":"Dart Basics","duration":30,"isFree":true};

  for (var element in details.keys) {
    print("Keys: $element values: ${details[element]}");
  }
}