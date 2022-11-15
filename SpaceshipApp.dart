void main(List<String> arguments) {
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon";

  falcon.moveLeft();
  print(falcon.posotion);
  falcon.moveRight();
  print(falcon.posotion);
  falcon.wasHit();
  print(falcon.wasHit);
}

class Spaceship {
  var name = "";
  var helth = 0;
  var posotion = 0;

  moveLeft() {
    posotion -= 1;
  }

  moveRight() {
    posotion += 2;
  }

  // ignore: always_declare_return_types
  wasHit() {
    helth = 5;
    if (helth <= 0) {
      print(
          "Sorry. Your ship was hit one too many times. Do you want to play again?");
    }
  }
}
