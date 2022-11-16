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

//Homework8

//hw8,6.Create a new instance of Fighter called destroyer.
 fighter destroyer=fighter();
 destroyer.weapon="laser";
 destroyer.remainingFirePower = 10;
 destroyer.name = "F15";
 print(destroyer.position);
 destroyer.moveleft();
 print(destroyer.position);
 destroyer.moveRight();
 print(destroyer.position);
 destroyer.wasHit();
 
 //hw8.7.Try to print weapon on falcon. Why doesn't this work? Provide your answer in a comment or a print statement below,
 print("Because falcon  dont take from Fighter , falcon takes from Spaceship ");

 destroyer.fire();
 print(destroyer.remainingFirePower);
 destroyer.fire();
 print(destroyer.remainingFirePower);
 destroyer.fire();
 print(destroyer.remainingFirePower);
 destroyer.fire();
 print(destroyer.remainingFirePower);
//hw8.9.Create a new instance of ShieldedShip called defender.
 ShieldedShip defender = ShieldedShip();
  defender.name = "Defender";
  defender.weapon = "Cannon";
defender.moveRight();
print(defender.position);
defender.fire();
print(defender.remainingFirePower);

//hw8.10.Go back to your declaration of ShieldedShip and override wasHit()
defender.wasHit();
  print("shieldStrength : ${defender.shieldStrength}");
  print("health :${defender.health}");

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
//hw8. 5.Define a new class Fighter that inherits from Spaceship.
class fighter extends Spaceship{
  String? weapon="";
  var remainingFirePower=5;

//hw8.8.Add a method to fighter called fire()
  fire(){
    if(remainingFirePower>0){
      remainingFirePower-=1;
    }else{
      print("You have no more fire power.");
    }
    
  }
  
}
//hw8.9.Define a new class ShieldedShip that inherits from Fighter.
class ShieldedShip extends fighter{
  var shieldStrength = 25;
 //hw8.10.When shieldStrength is 0, all wasHit()
   @override
  wasHit(){
    if(shieldStrength! > 0){
      shieldStrength = shieldStrength! - 5 ;
    }else {
      super.wasHit();
    }
    }
}
    


