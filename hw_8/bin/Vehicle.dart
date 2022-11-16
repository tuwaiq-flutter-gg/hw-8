//1
class Vehicle {
  var model;
  var yeaOfPrediction;
  var Company;
  var color;

  printVehicle() {
    print(
        "The model of the vehicle $model ,The expected year of the industry $yeaOfPrediction , from company $Company ,and vehicle color $color ");
  }

  printcustomVehicle() {
    print("The model of the vehicle $model  from company $Company ");
  }

  // //2part1 "named constructors"
  Vehicle.defaultVehicle() {
    print("This is the default constructor");
  }

  //3part1
  Vehicle({this.model, this.yeaOfPrediction, this.Company, this.color});

  //4part1
  Vehicle.customVehicle({this.model, this.Company});
}
