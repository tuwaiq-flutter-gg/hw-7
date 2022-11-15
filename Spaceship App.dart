main(){
  //2.Create a constant called falcon and assign it to an instance of Spaceship. After initialization, set name to "Falcon."
Spaceship falcon = Spaceship();
falcon.name = "Falcon";
falcon.moveleft();


//3.move falcon to the left twice and to the right once. Print the new position of falcon after each change in position.
falcon.moveleft();
print(falcon.position);
falcon.moveleft();
print(falcon.position);
falcon.moveRight();
print(falcon.position);

//4.call it on falcon and print out the value of health.
falcon.wasHit();
print(falcon.health);

}

//1.Create a Spaceship class with three variable properties: name, health, and position.
class Spaceship{
  String?name="";
  int health=0;
  int position=0;

//3.Go back and add a function called moveLeft() to the definition of Spaceship.
  moveleft(){
    position -= 1;
    

  }
   //3. Add a similar method called moveRight() that moves the spaceship to the right.
  moveRight(){
        position += 1;
    }

    //4.add a function wasHit() to Spaceship

     wasHit(){
        health -= 5;
        if (health <= 0){
            print("Sorry. Your ship was hit one too many times. Do you want to play again?");
        }

    


}}