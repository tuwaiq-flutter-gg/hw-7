import 'dart:math';

main(){
//________________8_________________
BankClient Bank= BankClient(10, 23763463, "Ruba");
print(Bank.Deposit(amount: 20000));
Bank.Withdraw(30000);

}
//________________5_________________
//Create a bankClient class with three variable properties: id, name, and balance. 
class BankClient {
int? id= Random().nextInt(20);// automatically generated
final String? name; //can't be changed
num? balance=0;
//________________6_________________
//Add two function getBalance and getName.
// The getBalance function return the balance
getBalance (){
return balance;
}
//getMame retun the name.
getName(){
  return name;
}
BankClient(this.balance,this.id,this.name){
  print("Hello ${name} in new account ");
}

//________________7_________________
//Create an deposit and withdraw function
Deposit({double? amount }){
  balance=balance! + amount!;
  return balance;  // return the new balance after the addition, 
} 
Withdraw(double amount){
  if(amount < balance!){
    balance= balance! - amount;
    return balance ;
  }else{
    print("Operation Failed! The amount is greater than your balance");
  }
}
}