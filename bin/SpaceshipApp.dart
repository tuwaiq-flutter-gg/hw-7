void main(List<String> arguments) {
  // task:2
  String falcon = "falcon";
  Spaceship spaceship1 = Spaceship(name: falcon, health: 100, position: 0);

  spaceship1.moveLeft();
  spaceship1.moveLeft();
  spaceship1.moveRight();
  print(spaceship1.position);
  print(spaceship1.health);
  spaceship1.wasHit();
  print(spaceship1.health);
}

// task:1
class Spaceship {
  String name = "";
  int health = 0, position = 0;

  Spaceship({required this.name, required this.health, required this.position});

  // task:3
  void moveLeft() => position--;
  void moveRight() => position++;
  // task:4
  void wasHit() => health <= 0
      ? print(
          "Sorry, your ship was hit one too many times. Do you want to play again?")
      : health -= 5;

  
}
