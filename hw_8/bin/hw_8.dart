import 'vehicle.dart';

void main() {
  Vehicle v =
      Vehicle(car: "Camry", model: 2015, color: "black", Company: "Toyota");
  v.defaultVehicle();
  v.customVehicle();
  print(
      "When you give the value to the parameter, the values are renewed in class var");
  v.Insurance(1000);
  v.Traffic_Violation(["Speed 150ريال"]);
  ////////////////////////////////////////////////////////////////

  Fighter w = Fighter(
      health: 0,
      name: "Destroyer",
      position: 0,
      weapon: "",
      remainingFirePower: 10);
  //position
  w.where_P();
  w.moveRight();
  //position
  w.where_P();
  print("Because the falcon is static and it is special in the ship's class");
  w.fire();
  /////////////////////////////////////////////////////////////

  ShieldedShip s = ShieldedShip();
  s.moveRight();
  w.where_P();
  s.fire();
  s.wasHit();
  s.wasHit();
  s.wasHit();
  s.wasHit();
  s.wasHit();
  s.wasHit();
  s.wasHit();
}
