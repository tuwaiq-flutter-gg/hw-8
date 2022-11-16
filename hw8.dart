void main(List<String> arguments) {
  vehicle type1 = vehicle(
      model: "camry", yeaOfPrediction: 2018, Company: "toyota", color: "black");
  type1.type();

  vehicle def1 = vehicle();
  def1.defaultVehicle();

  vehicle type2 = vehicle.customVehicle(model: "Lexus", yeaOfPrediction: 2022);
  type2.type();
}

class vehicle {
  var model;
  var yeaOfPrediction;
  var Company;
  var color;

  vehicle({this.model, this.yeaOfPrediction, this.Company, this.color});

  type() {
    print("my frind has $model with company $Company and he got $color Color");
  }

  vehicle.customVehicle({this.model, this.yeaOfPrediction});

  defaultVehicle() {
    print("This is the default constructor");
  }
}
