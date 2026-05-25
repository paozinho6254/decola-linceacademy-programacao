import 'dart:math';

void main() {
  var aleatorio = Random();

  int valor1 = aleatorio.nextInt(100) + 1;
  int valor2 = aleatorio.nextInt(100) + 1;

  double resultado = valor1 / valor2;

  int parteInteira = resultado.toInt();
  double parteDecimal = resultado - parteInteira;

  print("Valor 1: $valor1");
  print("Valor 2: $valor2");
  print("Resultado: $resultado");
  print("Parte inteira: $parteInteira");
  print("Parte Decimal: $parteDecimal");
}
