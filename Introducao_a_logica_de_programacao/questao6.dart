// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Declaração de variáveis de tipo Real
  double a, b, c, hipotenusa;

  print("Digite os valores dos catetos: ");
  stdout.write("a: ");
  // Leitura de dados de variável
  a = double.parse(stdin.readLineSync() ?? '');
  stdout.write("b: ");
  // Leitura de dados de variável
  b = double.parse(stdin.readLineSync() ?? '');

  c = a*a + b*b;
  hipotenusa = c;

  // Laço for para determinar a raiz mais próxima de hipotenusa
  for(int i = 0; i < 10; i++){
    hipotenusa = ((hipotenusa + c) / hipotenusa) / 2;
  }

  print("Hipotenusa: ${hipotenusa}");

}