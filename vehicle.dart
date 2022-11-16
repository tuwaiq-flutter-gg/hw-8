main() {
  //[2] solutions
  Vehicle Vehicle1 = Vehicle.defaultVehicle();
  Vehicle1.info();
  Vehicle1.manufactured();

  print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[3] solution
  Vehicle Vehicle2 = Vehicle(
      model: "Ford", yeaOfPrediction: 2022, Company: "Mustang", color: "Black");
  Vehicle2.info();
  Vehicle2.manufactured();

  print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");

  //[4] solution
  Vehicle Vehicle3 =
      Vehicle.customVehicle(model: "Ford", yeaOfPrediction: 2022);
  //the above call will create a Vehicle instance with the following :
  //1-(model:Ford) assigned in constructor.
  //2-(yeaOfPrediction:2022) assigned in constructor.
  //3-(Company:null) will take the value we initialized it with and we used null safety so
  //the initial value is null because we did not assigned any value to it in constructor.
  //4-(color:null) will take the value we initialized it with and we used null safety so
  //the initial value is null because we did not assigned any value to it in constructor.
  Vehicle3.info();
  Vehicle3.manufactured();
}

//[1] solution
class Vehicle {
  String? model;
  int? yeaOfPrediction;
  String? Company;
  String? color;
  info() {
    print("The Vehicle is $Company model $model with color $color");
  }

  manufactured() {
    print("The Vehicle manufactured in $yeaOfPrediction by $Company");
  }

  //[2] solution
  Vehicle.defaultVehicle() {
    print("This is the default constructor");
  }

  //[3] solution
  Vehicle({this.model, this.yeaOfPrediction, this.Company, this.color});

  //[4] solution
  Vehicle.customVehicle({this.model, this.yeaOfPrediction});
}
