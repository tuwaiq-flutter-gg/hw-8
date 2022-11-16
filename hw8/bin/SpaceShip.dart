import 'dart:io';

void main() {
  Spaceship falcon = Spaceship();
  falcon.name = "falcon";

  //Q6
  Fighter f1 = Fighter();
  f1.weapon = "Laser";
  f1.remainingFirePower = 10;
  f1.name = "Destroyer";
  print(f1.position);
  f1.moveRight();
  print(f1.position);

  //Q7
  //print(falcon.weapon);
  print(
      "I cant acsess the variable weapon in calss SpaceShip because Variable weapon is in class Fighter and Falcon is object of class Spaceship ");
  print("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");

  //Q8
  f1.fire();
  f1.fire();
  f1.fire();
  f1.fire();
  f1.fire();
  f1.fire();
  f1.fire();
  f1.fire();
  f1.fire();
  f1.fire();
  f1.fire();
  print("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");
  //Q9
  ShieldedShip defender = ShieldedShip();
  defender.name = "defender";
  defender.weapon = "Cannon";
  defender.moveRight();
  print(defender.position);
  defender.fire();
  print("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");

  //Q10,11
  //setting defender health to 10
  defender.health = 10;
  defender.wasHit();
  print(
      "Defender Health =${defender.health}\t shield Strength is ${defender.shieldStrength}");
  defender.wasHit();
  print(
      "Defender Health =${defender.health}\t shield Strength is ${defender.shieldStrength}");
  defender.wasHit();
  print(
      "Defender Health =${defender.health}\t shield Strength is ${defender.shieldStrength}");
  defender.wasHit();
  print(
      "Defender Health =${defender.health}\t shield Strength is ${defender.shieldStrength}");
  defender.wasHit();
  print(
      "Defender Health =${defender.health}\t shield Strength is ${defender.shieldStrength}");
  defender.wasHit();
  print(
      "Defender Health =${defender.health}\t shield Strength is ${defender.shieldStrength}");
  defender.wasHit();
  print(
      "Defender Health =${defender.health}\t shield Strength is ${defender.shieldStrength}");
}

//Q5
class Fighter extends Spaceship {
  String weapon = "";
  num remainingFirePower = 5;

  //Q8
  fire() {
    if (remainingFirePower > 0) {
      remainingFirePower--;
      print("Your remainingFirePower is $remainingFirePower");
    } else {
      print("You have no more fire power");
    }
  }
}

//Q9
class ShieldedShip extends Fighter {
  num shieldStrength = 25;

  //Q10,11
  @override
  wasHit() {
    if (shieldStrength > 0) {
      shieldStrength -= 5;
    } else {
      //health -= 5;
      super.wasHit();
    }
  }
}

class Spaceship {
  String name = "";
  int health = 0;
  int position = 0;
  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  wasHit() {
    health -= 5;
    //print("Falcon health is $health ");
    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}
