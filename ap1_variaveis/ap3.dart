import 'dart:math';

void main(){

  const int limite = 100;
  final aleatorio = Random();

  int valor1 = aleatorio.nextInt(limite) + 1;
  int valor2 = aleatorio.nextInt(limite) + 1;
  
  print("Valor 1: $valor1");
  print("Valor 2: $valor2");

  final temp = valor1;
  valor1 = valor2;
  valor2 = temp;
  
  print("\nTroca: ");
  print("Valor 1: $valor1");
  print("Valor 2: $valor2");

}