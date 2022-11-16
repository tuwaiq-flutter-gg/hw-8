void main() {
  Spaceship falcon = Spaceship();
  falcon.name = "Falcon";

  falcon.moveLeft();
  print("Falcon position is ${falcon.position} ");
  falcon.moveLeft();
  print("Falcon position is ${falcon.position} ");
  falcon.moveRight();
  print("Falcon position is ${falcon.position} ");

  falcon.wasHit();
  print("Falcon health is ${falcon.health} ");

// Homework8

//6
  Fighter destroyer = Fighter();
  destroyer.weapon = "Laser";
  destroyer.remainingFirePower = 10;
  destroyer.name = "Destroyer";
  print("The position of ${destroyer.name} is ${destroyer.position} .");
  destroyer.moveRight();
  print("The position of ${destroyer.name} is ${destroyer.position} .");

  ///7
  //print(falcon.weapon);
  print("The super class can't access the sub class methods and fields but\n" +
      "the sub class can access its own and the super methods and fields . ");

  //8
  destroyer.fire();
  print(
      "The remaining fire power for ${destroyer.name} is ${destroyer.remainingFirePower}. ");
  destroyer.fire();
  print(
      "The remaining fire power for ${destroyer.name} is ${destroyer.remainingFirePower}. ");
  destroyer.fire();
  print(
      "The remaining fire power for ${destroyer.name} is ${destroyer.remainingFirePower}. ");
  destroyer.fire();
  print(
      "The remaining fire power for ${destroyer.name} is ${destroyer.remainingFirePower}. ");
  destroyer.fire();
  print(
      "The remaining fire power for ${destroyer.name} is ${destroyer.remainingFirePower}. ");

  //9
  ShieldedShip defender = ShieldedShip();
  defender.name = "Defender";
  defender.weapon = "Cannon";
  defender.moveRight();
  print("The position of ${defender.name} is ${defender.position} .");
  defender.fire();
  print(
      "The remaining fire power for ${defender.name} is ${defender.remainingFirePower}. ");

  //10
  defender.wasHit();
  print(
      "The shield strength for ${defender.name} is ${defender.shieldStrength} and its health is ${defender.health} . ");

  //11
  defender.wasHit();
  print(
      "The shield strength for ${defender.name} is ${defender.shieldStrength} and its health is ${defender.health} . ");
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
    if (health <= 0)
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
  }
}

//5
class Fighter extends Spaceship {
  String weapon = "";
  int remainingFirePower = 5;

  //8
  fire() {
    if (remainingFirePower > 0)
      remainingFirePower--;
    else
      print("You have no more fire power.");
  }
}

//9
class ShieldedShip extends Fighter {
  int shieldStrength = 25;

//10
  wasHit() {
    if (shieldStrength > 0)
      shieldStrength -= 5;
    else
      // health -= 5;
      super.wasHit(); //11
  }
}
