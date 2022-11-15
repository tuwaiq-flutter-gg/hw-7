import 'dart:io';

void main() {
//Q2
  Spaceship falcon = Spaceship();
  falcon.name = "falcon";

  //Q3
  falcon.moveLeft();
  print("the SpaceShip postion is ${falcon.position}");
  falcon.moveLeft();
  print("the SpaceShip postion is ${falcon.position}");
  falcon.moveRight();
  print("the SpaceShip postion is ${falcon.position}");

  //Q4
  falcon.health = 10;
  falcon.wasHit();
  //print("falcon health is ${falcon.health} ");
  falcon.wasHit();
  //print("falcon health is ${falcon.health} ");
}

//Q1
class Spaceship {
  String name = "";
  int health = 0;
  int position = 0;

  //Q3
  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  //Q4
  wasHit() {
    health -= 5;
    print("falcon health is $health ");
    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}
