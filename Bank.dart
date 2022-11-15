import 'dart:io';
import 'dart:math';

void main() {
  BankClient customer = BankClient();
  print(customer.id);
  print("Your Name is ${customer.name = "Rashed"}");
  print("Your current balance is ${customer.getBalance()}");
  customer.deposite(amount: 44);
  customer.withdraw(amount: 45);
}

class BankClient {
//5
  int? id = Random().nextInt(9999) + 0845;
  String? name;
  num? balance = 0;

  //6
  getBalance() {
    return balance;
  }

  getName() {
    return name;
  }

//7

  deposite({num? amount}) {
    balance = balance! + amount!;
    print("Your new balance is $balance");
  }

  //7.1
  withdraw({num? amount}) {
    if (balance! >= amount!) {
      balance = balance! - amount;
      print("Your new balance is $balance");
    } else {
      print("Operation Failed! The amount is greater than your balance");
    }
  }

  //8

  BankClient({String? name, int? id, num? balance}) {
    this.id = id;
    this.balance = balance;
    this.name = name;
  }
}
