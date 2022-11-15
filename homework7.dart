import 'dart:math';

void main(List<String> arguments) {
//2
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon";

  //3
  falcon.moveLeft();
  print("Falcon position is ${falcon.position} ");
  falcon.moveLeft();
  print("Falcon position is ${falcon.position} ");
  falcon.moveRight();
  print("Falcon position is ${falcon.position} ");

//4
  falcon.wasHit();
  print("Falcon health is ${falcon.health} ");

  //8
  bankClient test = bankClient(name: "hello", balance: 265);
  print(test.id);
}

//1
class Spaceship {
  String name = "";
  int health = 0;
  int position = 0;

//3
  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

//4
  wasHit() {
    health -= 5;
    if (health <= 0)
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
  }
}

//5
class bankClient {
  int id = (new Random()).nextInt(98765);
  String name = "";
  double balance = 0;

//8
  bankClient({required this.name, required this.balance});

//6
  double getBalance() {
    return balance;
  }

  String getName() {
    return name;
  }

  //7
  double deposit(double amount) {
    double newBalance = balance + amount;
    return newBalance;
  }

  withdraw(double amount) {
    if (amount < balance)
      balance -= amount;
    else
      print("Operation Failed! The amount is greater than your balance");
  }
}
