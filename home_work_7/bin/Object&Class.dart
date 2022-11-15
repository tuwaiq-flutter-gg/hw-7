class Spaceship {
  String? name;
  int health = 0;
  int position = 0;
  static const falcon = "Falcon";

  name_s() {
    print("name of Spaceship ${falcon}");
  }

  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  where_P() {
    if (position > 0) {
      print("right");
    } else if (position < 0) {
      print("left");
    } else if (position == 0) {
      print("is in center");
    }
  }

  wasHit() {
    health = -5;
    if (health <= 0) {
      print( "Sorry, your ship was hit one too many times. Do you want to play again?");
    } else {
      health = -5;
      print("your hit  ${health}");
    }
  }
}
