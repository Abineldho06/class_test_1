import 'dart:io';


List account = [];

bool yesorno = true;
void main(){

  print("---Banking Management System---\n");


for(;;){

  print("""1.Create an Account
2.Deposite Money
3.Withdraw Money
4.View Account Details\n""");


int option = inputnumber("Enter An option: ");
print("");

  switch(option){

    case 1:
    createAccount();
    print("");
    break;

    case 2:
    deposit();
    print("");
    break;

    case 3:
    withdraw();
    print("");
    break;

    case 4:
    viewDetails();
    print("");
    break;

    default:
    print("Invalid Option.!");
    break;
  }
  if(yesorno==false){
    print("Thank you for using the Bank Management system.GoodBye.!\n");
    break;
  }
}
}


//Create an account.
createAccount(){
  String name = inputtext("Enter Account Holder Name: ");
  int amount = inputnumber("Enter Initial Amount to Deposite: ");
  
  account.add({"name":name,"amount":amount});

  print("Account Created Successfully.\n");

  for(;;){
  stdout.write("Do you want to continue (yes/no)");
  String choice = stdin.readLineSync()!.toLowerCase();
  if(choice == "yes" || choice == "no"){
    if(choice=="no"){
      yesorno=false;
      break;
    }else if(choice=="yes"){
     break;
    }
  }else{
    print("Invalid Choice make sure it is Yes / NO\n");
  }
  }
}


//Deposite.
deposit(){
   int amount = inputnumber("Enter Amount to deposite: ");

   for(int i=0;i<account.length;i++){
    num newamount = amount+account[i]["amount"];
    account[i]["amount"] = newamount;
   }
  print("Amount Credited Successfully.\n");

  for(;;){
  stdout.write("Do you want to continue (yes/no)");
  String choice = stdin.readLineSync()!.toLowerCase();
  if(choice == "yes" || choice == "no"){
    if(choice=="no"){
      yesorno=false;
      break;
    }else if(choice=="yes"){
     break;
    }
  }else{
    print("Invalid Choice make sure it is Yes / NO \n");
  }
  }
}


//Withdraw Amount.
withdraw(){
 int amount =  inputnumber("Enter the Amount to Withdraw: ");

  for(int i=0;i<account.length;i++){
    if(account[i]["amount"]>amount){
      num newamount = account[i]["amount"] - amount;
      account[i]["amount"] = newamount;

      print("Amount Debited Successfully.\n");
    }else{
      print("Insufficient Amount.!\n");
      break;
    }
  }
for(;;){
  stdout.write("Do you want to continue (yes/no)");
  String choice = stdin.readLineSync()!.toLowerCase();
  if(choice == "yes" || choice == "no"){
    if(choice=="no"){
      yesorno=false;
      break;
    }else if(choice=="yes"){
     break;
    }
  }else{
    print("Invalid Choice make sure it is Yes / NO\n");
  }
  }

}



//View Details of user.
viewDetails(){
  print("--User Details--\n");
  for(int i=0;i<account.length;i++){
    print("""${i+1}.Name: ${account[i]["name"]} 
Balance: ${account[i]["amount"]}""");
  }
  print("");
  
  for(;;){
  stdout.write("Do you want to continue (yes/no)");
  String choice = stdin.readLineSync()!.toLowerCase();
  if(choice == "yes" || choice == "no"){
    if(choice=="no"){
      yesorno=false;
      break;
    }else if(choice=="yes"){
     break;
    }
  }else{
    print("Invalid Choice make sure it is Yes / NO\n");
  }
  }
}


//Input values.

inputtext(String text){
  stdout.write(text);
  String input = stdin.readLineSync()!;
  
  return input;
}

inputnumber(String text){
  stdout.write(text);
  int input = int.parse(stdin.readLineSync()!);

  return input;
}