import 'dart:math';

const PI = 3.14;
final aleatorio = Random();

void main() {
  final raios = List.generate(10, (_) => aleatorio.nextInt(100) + 1);

  for (var raio in raios) {
    print(
      "Raio: $raio, area: ${calcAreaCirculo(raio).toStringAsFixed(2)}, perímetro: ${calcPerimetroCirculo(raio).toStringAsFixed(2)}",
    );
  }
}

double calcAreaCirculo(int raio) {
  return (raio * raio) * PI;
}

double calcPerimetroCirculo(int raio) {
  return 2 * raio * PI;
}
