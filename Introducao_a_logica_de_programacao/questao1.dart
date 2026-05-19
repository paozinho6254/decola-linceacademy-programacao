// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Variável para armazenar valores reais
  double valor1, valor2;

  stdout.write('Digite valor 1: ');
  // Leitura dos dados da variável
  valor1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite valor 2: ');
  // Leitura dos dados da variável
  valor2 = double.parse(stdin.readLineSync()!);

  // Comando condicional, verifica se valor 1 é maior que o 2
  if (valor1 > valor2) {
    print('Total: ${valor1 / valor2}');
  // se não assume que valor 2 é maior
  } else {
    print('Total: ${valor2 / valor1}');
  }
}