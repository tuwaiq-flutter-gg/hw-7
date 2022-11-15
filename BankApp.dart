import 'package:uuid/uuid.dart';
void main(List<String> args) {
    bankClient user = bankClient(name: "Abdullah") ;
}

class bankClient {
  int? id ;
  static int? iduser = 33444 ;
  final String? name ;
  double? balance = 0 ;

  bankClient({ this.name}){
    id = iduser;
    id = id! + 1 ;
  } 
  getBalance(){
    return balance ;
  }
  getName(){
    return name ;
  }

  deposit({ double? amount }){
    balance = balance! + amount! ;
    print("your balance after deposit : $balance");
    return balance;
  }

 withdraw(double amount) {
    if (amount < balance!) {
      balance = amount;
      print("The new Balance after withdraw = $balance");
    } else {
      print(
          "Operation Failed! The amount $amount is greater than your balance $balance");
    }
  }
}