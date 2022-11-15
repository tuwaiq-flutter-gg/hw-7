import 'dart:math';

class bankClient {
  var id = Random().nextInt(10) + 100;
  String? name;
  double? balance = 0;

  bankClient({this.name, this.balance}) {
    print("client info");
    print("client name ${name}");
    print("client ID ${id}");
    print("client balance ${balance}");
  }

  deposit(double? deposit) {
    var balance_Acuont = deposit! + balance!;
    print("your balance now ${balance_Acuont}");
  }

  withdraw(double? withdraw) {
    if (withdraw! <= balance!) {
      var withdraw_A = balance! - withdraw!;
      print("your balance now ${withdraw_A}");
    } else {
      print("Operation Failed!");
    }
  }
}
