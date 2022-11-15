import 'dart:ffi';

main() {
  //[2] solution
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon";

  //[3] solution
  falcon.moveLeft();
  print("Moved to position : ${falcon.position}");
  falcon.moveLeft();
  print("Moved to position : ${falcon.position}");
  falcon.moveRight();
  print("Moved to position : ${falcon.position}");

  //[4] solution
  falcon.wasHit();
  print("Your Spaceship has {${falcon.health}} health");
}

//[1] solution
class Spaceship {
  String name = "";
  int health = 0;
  int position = 0;

  //[3] solution
  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  //[4] solution
  wasHit() {
    health -= 5;
    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}
