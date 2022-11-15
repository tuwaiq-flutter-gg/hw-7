import 'Spaceship.dart';
import 'bankClient.dart';

main() {
  //1 --> The solution is in class Spaceship

  //2
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon";

  //3 part(2)
  print(falcon.position);
  falcon.moveLeft();
  print(falcon.position);
  falcon.moveLeft();
  print(falcon.position);
  falcon.moveRight();
  print(falcon.position);

  //4 part2
  falcon.wasHit();
  print("the current health = ${falcon.health}");

  //5 -->The solution class bankClient
  //6 -->The solution class bankClient
  //7 -->The solution class bankClient
  //8 part2
  bankClient bc = bankClient(id: 65327, name: "Amjad", balance: 86.3);
  
}

class Spaceship {
  //1
  String name = "";
  int health = 0;
  int position = 0;

  //2-->in main

  //3 part1
  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  //4 part1
  wasHit() {
    int a = health - 5;
    if (a <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again? ");
    }
  }
}

class bankClient {
  //5
  var id;
  String? name;
  double balance = 0;

  int client = 1;
  automatically_generatedID() {
    return id = client++;
  }

  //6
  getBalance() {
    return print("your balance = $balance");
  }

  getName() {
    return print("your balance = $name");
  }

  //7 part1
  deposit({double? amount}) {
    var NewBalance = amount! + balance;
    return print("your new balance = $NewBalance");
  }

//7 part2
  withdraw({double? amount}) {
    if (amount! < balance) {
      var Upbalance = balance - amount;
      print("Your current account $Upbalance");
    } else {
      print("Operation Failed! The amount is greater than your balance");
    }
  }

  //8 part1
  bankClient({var id, String? name, double? balance}) {
    this.id = id;
    this.name = name;
    this.balance = balance!;
  }
}
