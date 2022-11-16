// ignore_for_file: file_names

import 'fighter.dart';

//9.
class ShieldedShip extends Fighter{
  int? shieldStrength = 25;

  //10
  @override
  wasHit() {
    if (shieldStrength! > 0) {
      shieldStrength! - 5;
    } else{
      // health! - 5;
      //11
        super.wasHit();
    } 
  }
}