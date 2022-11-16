main() {
  Spaceship falcon = Spaceship();
  //falcon.name = "Falcon";
  //falcon.moveLeft();
  //falcon.moveLeft();
  //falcon.moveRight();
  //falcon.wasHit();
  //print("Your Falcon's health is ${falcon.health}");
  //print("------------------------vHw8v--------------------------------");
//--------------------------HW8-5-11-----------------------------------
//6
  Fighter destroyer = Fighter();
  destroyer.weapon = "Laser";
  destroyer.remainingFirePower = 10;
  destroyer.name = "Destroyer";
  print(destroyer.position);
  destroyer.moveRight();
  print(destroyer.position);
//7
//print(falcon.weapon);
  print(
      "We cannot call weapon in falcon because it is the highr class and weapon is in the 'child' class, it has its own code. But we can call everything in falcon in destroyer because we inhert from it all its features.");
//8
  destroyer.fire();
  print(destroyer.remainingFirePower);
  destroyer.fire();
  print(destroyer.remainingFirePower);
  destroyer.fire();
  print(destroyer.remainingFirePower);
  destroyer.fire();
  print(destroyer.remainingFirePower);
  destroyer.fire();
  print(destroyer.remainingFirePower);
//9
  ShieldedShip defender = ShieldedShip();
  defender.name = "Defender";
  defender.weapon = "Cannon";
  defender.moveRight();
  defender.fire();
  print(defender.remainingFirePower);
  //11
  defender.wasHit();
  print(
      "The remaining shield is ${defender.shieldStrength} and the remaining health is ${defender.health}.");
  defender.wasHit();
  print(
      "The remaining shield is ${defender.shieldStrength} and the remaining health is ${defender.health}.");
  defender.wasHit();
  print(
      "The remaining shield is ${defender.shieldStrength} and the remaining health is ${defender.health}.");
  defender.wasHit();
  print(
      "The remaining shield is ${defender.shieldStrength} and the remaining health is ${defender.health}.");
  defender.wasHit();
  print(
      "The remaining shield is ${defender.shieldStrength} and the remaining health is ${defender.health}.");
  defender.wasHit();
  print(
      "The remaining shield is ${defender.shieldStrength} and the remaining health is ${defender.health}.");
}

class Spaceship {
  String? name = "";
  int? health = 100;
  int? position = 0;
  moveLeft() {
    this.position = position! - 1;
    print("Falcon is in $position position!");
  }

  moveRight() {
    this.position = position! + 1;
    print("Falcon is in $position position!");
  }

  wasHit() {
    this.health = health! - 5;
    if (health! <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}

//--------------------------HW8-5-11-----------------------------------
//5
class Fighter extends Spaceship {
  String? weapon = "";
  int remainingFirePower = 5;
//8
  fire() {
    if (remainingFirePower > 0) {
      remainingFirePower--;
    } else {
      print("You have no more fire power.");
    }
  }
}

//9
class ShieldedShip extends Fighter {
  int shieldStrength = 25;
//10
  @override
  wasHit() {
    if (this.shieldStrength > 0) {
      shieldStrength = shieldStrength -= 5;
    } else {
      super.wasHit();
    }
  }
}
