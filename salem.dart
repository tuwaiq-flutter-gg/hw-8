main() {
  //-----------------------------1-4---------------------------------------
  //2.1
  Vehicle v1 = Vehicle.defaultVehicle();

  //3.1
  Vehicle v2 = Vehicle(
      color: "White",
      company: "Chrysler",
      yearOfPrediction: 2014,
      model: "300c");
  v2.carColor();
  v2.carModel();

  //4.1
  Vehicle v3 =
      Vehicle.customVehicle(company: "Chrysler", yearOfPrediction: 2014);
  print("It will not show anything, cuz we need to call a function.");
  //-----------------------------1-4---------------------------------------
}

//
//
//
//-----------------------------1-4---------------------------------------
//1
class Vehicle {
  String? model;
  int? yearOfPrediction;
  String? company;
  String? color;

  carModel() {
    print("The car model is $model");
  }

  carColor() {
    print("The car color is $color");
  }

//2
  Vehicle.defaultVehicle() {
    print("This is the default constructor.");
  }

//3
  Vehicle({this.color, this.company, this.model, this.yearOfPrediction});

//4
  Vehicle.customVehicle({this.company, this.yearOfPrediction});
}
//-----------------------------1-4---------------------------------------
