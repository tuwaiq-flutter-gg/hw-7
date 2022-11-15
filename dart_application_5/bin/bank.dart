import 'package:dart_application_5/dart_application_5.dart'
    as dart_application_5;

main() {
  bankClient customer = bankClient(name: "asma", id: 347546889, balance: 10000);
  print(customer.deposit());
  print(customer.getBalance());
}

class bankClient {
  final String? name;
  double? id;
  double? balance = 0;

  bankClient({this.name, this.id, this.balance}) {}

  getBalance() {
    print("your balance is $balance");
    return balance;
  }

  getName() {
    print("your name is $name");
    return name;
  }

  deposit({double? amount}) {
    double newBalance = balance! + amount!;
    return newBalance;
  }

  withdraw({double? amount}) {
    if (amount! < balance!) {
      balance = -amount;
      return balance;
    } else {
      print("Operation Failed! The amount is greater than your balance");
    }
  }
}
