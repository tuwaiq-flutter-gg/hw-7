import 'package:dart_application_5/dart_application_5.dart'
    as dart_application_5;

void main() {
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon.";

  falcon.moveLift();
  falcon.moveRight();
  print(falcon.wasHit());
}

class Spaceship {
   String? name;
  int? health = 0;
  int? position = 0;

  Spaceship({this.name, this.health, this.position}) {}

  moveLift() {
    position = position! - 1;
    print("to lift");
  }

  moveRight() {
    position = position! + 1;
    print("to right");
  }

  wasHit() {
    health = health! - 5;
    if (health! <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}
