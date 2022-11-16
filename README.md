# Homework 8

1.Create a class named `car` with four variable properties: `model`, `yeaOfPrediction`, `Company` and `color`. Add at least two methods to this class from your own choose. 

2.Build a default constructor called `defaultCar`, that prints the statement "This is the default constructor". test it in the main then let the default constructor as a comment in order to apply the following questions.

3.Build a parameterized constructor  called `car`, that has the same parameters above from the `Car` class. call it in the main function to test it.

4.Build a custom constructor called `customCar`,  that takes only two from the parameter in the class `car`. Call `customCar()` and explain the result.

#### The following exercises are based on the spaceship app from yesterday's assignment.

5.Define a new class `Fighter` that inherits from `Spaceship`. Add a variable property `weapon` that defaults to an empty string and a variable property `remainingFirePower` that defaults to 5.

6.Create a new instance of `Fighter` called destroyer. A Fighter will be able to shoot incoming objects to avoid colliding with them. After initialization, set `weapon` to "Laser" and `remainingFirePower` to 10. Note that since Fighter inherits from Spaceship, it also has properties for `name`, `health`, and `position`, and has methods for `moveLeft()`, `moveRight()`, and `wasHit()` even though you did not specifically add them to the declaration of Fighter. Knowing that, set name to "Destroyer," print `position`, then call `moveRight()` and print `position` again.

7.Try to print `weapon` on falcon. Why doesn't this work? Provide your answer in a comment or a print statement below, and remove any code you added that doesn't compile.

8.Add a method to fighter called `fire()`. This should check to see if `remainingFirePower` is greater than 0, and if so, should decrement `remainingFirePower` by one. If `remainingFirePower` is not greater than 0, print "You have no more fire power." Call `fire()` on destroyer a few times and print `remainingFirePower` after each method call.

9.Define a new class `ShieldedShip` that inherits from `Fighter`. Add a variable property `shieldStrength` that defaults to 25. Create a new instance of ShieldedShip called `defender`. Set name to "Defender" and weapon to "Cannon." Call `moveRight()` and print `position`, then call `fire()` and print `remainingFirePower`.

10.Go back to your declaration of `ShieldedShip` and override `wasHit()`. In the body of the method, check to see if `shieldStrength` is greater than 0. If it is, decrement `shieldStrength` by 5. Otherwise, decrement `health` by 5. Call `wasHit()` on defender and print `shieldStrength` and `health`.

11.When `shieldStrength` is 0, all `wasHit()` does is decrement health by 5. That's exactly what the implementation of `wasHit()` on Spaceship does! Instead of rewriting that, you can call through to the superclass implementation of `wasHit()`. Go back to your implementation of `wasHit()` on `ShieldedShip` and remove the code where you decrement `health` by 5 and replace it with a call to the superclass's implementation of the method. Call `wasHit()` on defender, then print `shieldStrength` and `health`.


