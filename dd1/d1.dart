void main(){

  final pi = 3.1415;

  List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];

  for(var raio in raios){
    double perimetro = raio * (pi*2);
    double area = (raio * raio) * pi;

    print("Raio: $raio, area: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}");
  }

}