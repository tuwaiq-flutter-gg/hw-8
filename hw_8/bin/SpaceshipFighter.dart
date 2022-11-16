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
    int a = health - 5;
    if (a <= 0) {
      print(
          "Sorry, your ship was hit one too many times. Do you want to play again? ");
    }
  }
}

//5part1
class Fighter extends Spaceship {
  var weapon = "";
  int remainingFirePower = 5;
//8part1
  fire() {
    if (remainingFirePower > 0) {
      remainingFirePower--;
      print("Fire power = [$remainingFirePower]");
    } else {
      print("You have no more fire power[$remainingFirePower] ");
    }
  }
}

//9part1
class ShieldedShip extends Fighter {
  var shieldStrength = 25;

//10part1
  @override
  wasHit() {
    // TODO: implement wasHit
    if (shieldStrength > 0) {
      shieldStrength -= 5;
    } else {
      //health -= 5;
      //11
      super.wasHit();
    }
    return super.wasHit();
  }
}
