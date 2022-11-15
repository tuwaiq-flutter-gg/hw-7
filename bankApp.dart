import 'dart:io';
import 'dart:math';

main() {
  // 8 and all the main functions
  // I got the permission to add some features to the app
  
  bankClient bank = bankClient(name: "Salem");
  print("Hello ${bank.getName()}, ${bank.id}");
  print("Your current balance is ${bank.getBalance()}");
  print("Enter your deposite amount please:");
  num inputD = num.parse(stdin.readLineSync()!);
  print("Great! your new balance is ${bank.deposite(inputD)}");
  print("Enter your withrawal amount please:");
  num inputW = num.parse(stdin.readLineSync()!);
  bank.withdraw(inputW);
}

// 5
class bankClient {
  int? id = Random().nextInt(999999) + 99999;
  String? name;
  num? balance = 0;
// 6
  getBalance() {
    return balance;
  }

  getName() {
    return name;
  }

// 7
// // i used num in the parameter for the input addon feature, and num uses both int and double types.
  deposite(num? amount) {
    return this.balance = balance! + amount!;
  }

// i used num in the parameter for the input addon feature, and num uses both int and double types.
  withdraw(num? amount) {
    if (amount! < balance!) {
      print("Great! your new balance is ${this.balance = balance! - amount}");
    } else {
      print("Operation Failed! The amount is greater than your balance.");
    }
  }

// 8
  bankClient({required String? name}) {
    this.id = id;
    this.name = name;
    this.balance = balance;
  }
}
