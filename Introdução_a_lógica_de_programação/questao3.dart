import 'dart:io';

void main() {
  int valor1, valor2;

  stdout.write('Digite valor 1: ');
  // Leitura de dados da variável
  valor1 = int.parse(stdin.readLineSync()!);

  stdout.write('Digite valor 2: ');
  // Leitura de dados da variável
  valor2 = int.parse(stdin.readLineSync()!);

  // Condional se valor1 maior que valor2
  if (valor1 > valor2) {
    print('Total absoluto positivo: ${valor1 - valor2}');
    // Se não assume valor2 como maior
  } else {
    print('Total absoluto positivo: ${valor2 - valor1}');
  }
}