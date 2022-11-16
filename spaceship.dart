void main() {
  //5
  Spaceship1 destroyer = Spaceship1();

  //6

  destroyer.weapon = "Laser";
  destroyer.remainingFirePower = 10;
  print(destroyer.name = "Destroyer");
  print(destroyer.position);
  destroyer.moveRight();
  print(destroyer.position);
  //7
  Spaceship falcon = Spaceship();
  //print(falcon.weapon);
  //Because spaceship cannot inherit spaceship1 because it is the base class spaceship1 it inherits spaceship including;

  //8
  destroyer.fire(remainingFirePower: 1);
  destroyer.fire(remainingFirePower: 2);
  destroyer.fire(remainingFirePower: 7);
  destroyer.fire(remainingFirePower: 0);
  destroyer.fire(remainingFirePower: -1);

  //9
  ShieldedShip defender = ShieldedShip();
  print(defender.name = "Defender");
  print(defender.weapon = "Cannon");
  defender.moveRight();
  print(defender.position);
  defender.fire(remainingFirePower: 1);
  //10
  defender.wasHit();
  print("shieldStrength : ${defender.shieldStrength}");
  print("health : ${defender.health}");
  //11
  defender.wasHit();
  print("shieldStrength : ${defender.shieldStrength}");
  print("health : ${defender.health}");
}

class Spaceship {
  String? name;
  num health = 0;
  num position = 0;

  moveLeft() {
    position--;
  }

  moveRight() {
    position++;
  }

  wasHit() {
    health -= 5;

    if (health <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again?");
    }
  }
}

//5
class Spaceship1 extends Spaceship {
  String? weapon;
  int remainingFirePower = 5;

  //8
  fire({int? remainingFirePower}) {
    if (remainingFirePower! > 0) {
      remainingFirePower--;
      print("fire power is $remainingFirePower ");
      return remainingFirePower;
    } else {
      print("You have no more fire power.");
    }
  }
}

//9
class ShieldedShip extends Spaceship1 {
  int? shieldStrength = 25;

  //10
  @override
  wasHit() {
    if (shieldStrength! > 0) {
      shieldStrength = shieldStrength! - 5;
      print(shieldStrength);
      return shieldStrength;
    } else {
      // health = health - 5;
      // print(health);
      // return health;

      //11
      super.wasHit();
    }
  }
}
