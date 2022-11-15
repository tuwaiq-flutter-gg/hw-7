import 'dart:io';

// Spaceship App
// -------------
class Spaceship {
  //1
  String? name;
  int? health = 0;
  int? position = 0;

  //2
  final falcon; //final = const in class
  Spaceship({this.name, this.health, this.position, this.falcon});

  //3
  moveLeft() {
    if (position! < 0) {
      for (var i = 0; i > -2; i--) {
        stdout.write("-");
      }
      print("${falcon}");
    }
  }

  moveRight() {
    if (position! > 0) {
      for (var i = 0; i < 1; i++) {
        stdout.write("${falcon}");
        stdout.write("-");
      }
    }
  }

  //4
  wasHit() {
    if (health! <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}
