# Homework 7 

### Object & Class

### Spaceship App

#### The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game.

1.Create a `Spaceship` class with three variable properties: `name`, `health`, and `position`. The default value of name should be an empty string and health should be 0. position will be represented by an Int where negative numbers place the ship further to the left and positive numbers place the ship further to the right. The default value of position should be 0.

2.Create a constant called `falcon` and assign it to an instance of Spaceship. After initialization, set name to "Falcon."

3.Go back and add a function called `moveLeft()` to the definition of Spaceship. This function should adjust the position of the spaceship to the left by one. Add a similar method called `moveRight()` that moves the spaceship to the right. Once these methods exist, use them to move falcon to the left twice and to the right once. Print the new position of falcon after each change in position.

4.The last thing `Spaceship` needs for this example is a function to handle what happens if the ship gets hit. Go back and add a function `wasHit()` to Spaceship that will decrement the ship's health by 5, then if health is less than or equal to 0 will print "Sorry, your ship was hit one too many times. Do you want to play again?" Once this method exists, call it on falcon and print out the value of health.

5.Define a new class `Fighter` that inherits from `Spaceship`. Add a variable property `weapon` that defaults to an empty string and a variable property `remainingFirePower` that defaults to 5.

6.Create a new instance of Fighter called `destroyer`. A Fighter will be able to shoot incoming objects to avoid colliding with them. After initialization, set `weapon` to "Laser" and `remainingFirePower` to 10. Note that since `Fighter` inherits from `Spaceship`, it also has properties for `name`, `health`, and `position`, and has methods for `moveLeft()`, `moveRight()`, and `wasHit()` even though you did not specifically add them to the declaration of Fighter. Knowing that, set name to "Destroyer," print `position`, then call `moveRight()` and print `position` again.

7.Try to print `weapon` on falcon. Why doesn't this work? Provide your answer in a comment or a print statement below.

8.Add a function to fighter called `fire()`. This should check to see if `remainingFirePower` is greater than 0, and if so, should decrement `remainingFirePower` by one. If `remainingFirePower` is not greater than 0, print "You have no more fire power." Call `fire()` on destroyer a few times and print `remainingFirePower` after each function call.

9.Define a new class `ShieldedShip` that inherits from `Fighter`. Add a variable property `shieldStrength` that defaults to 25. Create a new instance of `ShieldedShip` called `defender`. Set `name` to "Defender" and `weapon` to "Cannon". Call `moveRight()` and print `position`, then call `fire()` and print `remainingFirePower`.

10.Go back to your declaration of `ShieldedShip` and override `wasHit()`. In the body of the function, check to see if `shieldStrength` is greater than 0. If it is, decrement `shieldStrength` by 5. Otherwise, decrement `health` by 5. Call `wasHit()` on defender and print `shieldStrength` and `health`.

11.When `shieldStrength` is 0, all `wasHit()` does is decrement health by 5. That's exactly what the implementation of `wasHit()` on Spaceship does! Instead of rewriting that, you can call through to the superclass implementation of `wasHit()`. Go back to your implementation of `wasHit()` on `ShieldedShip` and remove the code where you decrement health by 5 and replace it with a call to the superclass's implementation of the function. Call `wasHit()` on defender, then print `shieldStrength` and `health`.

### Bank App

12.Create a `bankClient` class with three variable properties: `id`, `name`, and `balance`. The value of `id` should be an automatically (the id should repesents the order of the client starting from 1 and can't be changed), `name` should be a string that can't be changed and `balance` should be 0.

13.Add two function to `bankClient` called `getBalance` and `addBalance`. The `getBalance` function return the `name`, `addBalance`retun the `balance`.

14.Create an `deposit` and `withdraw` functions, the `deposit` take a double parameter `amount` and return the new balance after the addition, for the `withdraw` takes a double parameter called `amount` the function check if the amount is less than the balance if so, update the `balance` if not, print "Operation Failed! The amount is greater than your balance".

15.Create a constructor that uses an Insilaize list to initialize the name and a small test program.


