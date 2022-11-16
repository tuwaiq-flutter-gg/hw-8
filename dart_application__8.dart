5//
class Fighter extends Spaceship {
  String weapon = "";
  int remainingFirePower = 5;
}
6// destroyer.weapon = "Laser";
  destroyer.remainingFirePower = 10;
  destroyer.name = "Destroyer";
  print("${destroyer.name} Position is ${destroyer.position}");
  destroyer.moveRight();
  print("${destroyer.name} Position is ${destroyer.position}");
  7//
  Spaceship falcon = Spaceship();{
  print("-__-");
  }
  // 8
  destroyer.fire();
  print("remainingFirePower : ${destroyer.remainingFirePower}" );
  destroyer.fire();
  print("remainingFirePower : ${destroyer.remainingFirePower}" );
  destroyer.fire();
  print("remainingFirePower : ${destroyer.remainingFirePower}" );

  // 9
  ShieldedShip defender = ShieldedShip()
    ..name = "Defender"
    ..weapon = "Cannon";

  defender.moveRight();
  print("position : ${defender.position}");

  defender.fire();
  print("remainingFirePower : ${defender.remainingFirePower}");
  10//
 defender.wasHit();
  print("shieldStrength : ${defender.shieldStrength}");
  print("health :${defender.health}");

11/
