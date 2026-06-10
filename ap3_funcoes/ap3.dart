import 'dart:math';

const PI = 3.14;
final aleatorio = Random();

void main() {
  final raios = List.generate(10, (_) => aleatorio.nextDouble() * 100 + 1);

  for (var raio in raios) {
    print(
      "Raio: $raio, area: ${calcAreaCirculo(raio).toStringAsFixed(2)}, perímetro: ${calcPerimetroCirculo(raio).toStringAsFixed(2)}",
    );
  }
}

double calcAreaCirculo(double raio) {
  return (raio * raio) * PI;
}

double calcPerimetroCirculo(double raio) {
  return 2 * raio * PI;
}
