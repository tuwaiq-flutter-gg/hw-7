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

### Bank App

9.Create a `bankClient` class with three variable properties: `id`, `name`, and `balance`. The value of `id` should be an automatically generated, `name` should be a string that can't be changed and `balance` should be 0.

10.Add two function to `bankClient` class called `getBalance` and `getName`. The `getBalance` function return the `balance`, `getMame`retun the `name`.

11.Create an `deposit` and `withdraw` functions, the `deposit` take a double parameter `amount` and return the new balance after the addition, for the `withdraw` takes a double parameter called `amount` the function check if the amount is less than the balance if so, update the `balance` if not, print "Operation Failed! The amount is greater than your balance".

12.Create a constructor to initialize the `id`, `name`, and `balance`, then test it in the main function.


