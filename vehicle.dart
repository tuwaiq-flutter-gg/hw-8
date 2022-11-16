void main() {
  //2
  Vehicle vehicle = Vehicle.defaultVehicle();
  //1
  vehicle.colorCar(color: "white");
  vehicle.modelCar(model: 2017);

  //3

  Vehicle vehicle2 = Vehicle();
  print(vehicle2.color = "Black");
  print(vehicle2.company = "Toyota");
  print(vehicle2.model = "Yaris");
  print(vehicle2.yearOfPrediction = 2022);

  //4

  Vehicle vehicle3 = Vehicle.customVehicle(model: "Yaris", company: "Toyota");
  /*

When we created the constructor,
 we added two values to it that are inside the class, which are the model and the company, 
 and for each of them we added a value, and as for the color and the version of the vehicle, their value became null
 */
}

class Vehicle {
  //1
  String? model;
  int? yearOfPrediction;
  String? company;
  String? color;
  //1
  colorCar({String? color}) {
    print("My car color is $color");
  }

  //1
  modelCar({int? model}) {
    print("My car model is $model");
  }

  //2

  Vehicle.defaultVehicle() {
    print("This is the default constructor");
  }
  //3
  Vehicle({this.model, this.yearOfPrediction, this.company, this.color});

  //4

  Vehicle.customVehicle({this.model, this.company}) {
    print("My car model is $model and from which company $company");
  }
}
