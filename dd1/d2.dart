void main(){

  final celsius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for(var temp in celsius){
    final kelvin = temp + 273.15;
    final fahren = (temp * 1.8) + 32;

    print("Celsius: ${temp.toStringAsFixed(2)}, fahrenheit: ${fahren.toStringAsFixed(2)}, kelvin: ${kelvin.toStringAsFixed(2)}");
  }


}