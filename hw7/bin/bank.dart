
//Bank App
//--------
class BankClient{

  //5
  final String? name; 
  int? id = 568332190 ; 
  int? balance = 0;

  //8
  BankClient({this.id, this.name ,this.balance});

  //6
  getBalance(){
    return balance;
  }

  getName(){
    return name;
  }

  //7
  deposit({double? amount }){
    return balance! + amount!;
  }

  withdraw(double? amount ){
    if (amount! < balance!) {
      balance = balance! + 1;
    } else {
      print("Operation Failed! The amount is greater than your balance>\n");
    }
  }


}