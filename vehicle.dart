void main() {
  //2
  vehicle Vehicle = vehicle.defaultVehicle();
  Vehicle.display();

//3
  vehicle Vehicle2 = vehicle(
      color: "Blue", Company: "Tesla", model: "X", yeaOfPrediction: 2021);
  Vehicle2.display();

//4
  vehicle Vehicle3 = vehicle.customVehicle(model: "3", Company: "Tesla");
  Vehicle3.display();
  print(
      "Calling the customVehicle while creating an object will initialize the model and company feilds only.\n");
}

//1
class vehicle {
  String? model;
  int? yeaOfPrediction;
  String? Company;
  String? color;

//2
  vehicle.defaultVehicle() {
    print("This is the default constructor");
  }

//3
  vehicle({this.Company, this.color, this.model, this.yeaOfPrediction});

//4
  vehicle.customVehicle({this.Company, this.model});

//1
  display() {
    print(
        "The vehicle model is $model and it was produced in $yeaOfPrediction \n" +
            "from $Company company and its color is $color . ");
  }

  printVehicleColor() {
    print("The vehicle color is  $color . ");
  }
}
