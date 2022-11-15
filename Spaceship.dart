void main() {
  //2

  Spaceship falcon = Spaceship();
  falcon.name = "Falcon";

  //3.2

  falcon.moveRight();
  print(falcon.position);

  falcon.moveLeft();
  print(falcon.position);

  falcon.moveLeft();
  print(falcon.position);

  //4.1

  falcon.wasHit();
}

class Spaceship {
  //1
  String? name;
  num health = 0;
  num position = 0;

  //2 in main;

  //3.1
  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  //4

  wasHit() {
    health -= 5;

    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}
