
import 'spaceship_mainclass.dart';

//5.
class Fighter extends Spaceship{
  String? weapon;
  int? remainingFirePower = 5;

  Fighter({this.remainingFirePower, this.weapon, String? name, int? health, int? postion , String? falcon})
  :super(name: name, health: health,position: postion ,falcon: falcon);

  //8.
  fire(){
    if (remainingFirePower! > 0) {
    remainingFirePower! - 1;
    }else if(remainingFirePower! < 0){
      print("You have no more fire power.");
    }
  }
}