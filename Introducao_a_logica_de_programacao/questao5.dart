// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Declaração de variáveis de tipo Real
  double a, b, c, x1, x2, delta;

  print('Insira os valores de a, b e c');

  stdout.write('a: ');
  // Leitura de dados de variável
  a = double.parse(stdin.readLineSync()!);

  stdout.write('b: ');
  // Leitura de dados de variável
  b = double.parse(stdin.readLineSync()!);

  stdout.write('c: ');
  // Leitura de dados de variável
  c = double.parse(stdin.readLineSync()!);

  // Se a for 0 o progrma declara que a operação não é de 2º grau
  if (a == 0) {
    print('Esta não é uma equação de 2º grau');
    // Caso seja prossegue com o cálculo
  } else {
    delta = (b * b) - 4 * a * c;

    // Se delta < 0 não há ráizes para prosseguir com a conta
    if (delta < 0) {
      print('Não há raízes');
      // Mas se for positivo continua
    } else {
      double raizDelta = delta;
      // Laço for para se obter a raiz mais próxima de delta
      for (int i = 0; i < 9; i++) {
        raizDelta = (raizDelta + delta / raizDelta) / 2;
      }

      // Restante do calculo divido em 2 para determinar x1 e x2
      x1 = (-b + raizDelta) / (2 * a);
      x2 = (-b - raizDelta) / (2 * a);

      print('X1 = $x1');
      print('X2 = $x2');
    }
  }
}
