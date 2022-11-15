main() {
  // 2
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon";
  // 3 (part2)
  falcon.moveLeft();
  falcon.moveLeft();
  falcon.moveRight();
  // 4 (part2)
  falcon.wasHit();
  print("Your Falcon's health is ${falcon.health}");
}

// 1
class Spaceship {
  String? name = "";
  int? health = 0;
  int? position = 0;
// 3
  moveLeft() {
    this.position = position! - 1;
    print("Falcon is in $position position!");
  }

  moveRight() {
    this.position = position! + 1;
    print("Falcon is in $position position!");
  }
// 4
  wasHit() {
    this.health = health! - 5;
    if (health! <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}
