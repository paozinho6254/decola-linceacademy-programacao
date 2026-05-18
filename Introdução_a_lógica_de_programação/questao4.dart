// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Variáveis para armazenar valores inteiros
  int valor1, valor2;
  // i começa com 2, pois é menor número primo
  int i = 2;
  // mmc = 1 para poder multiplicas os valores de i sem dar 0
  int mmc = 1;

  stdout.write('Digite valor 1: ');
  // Leitura de dados da variável 
  valor1 = int.parse(stdin.readLineSync()!);

  stdout.write('Digite valor 2: ');
  // Leitura de dados da variável
  valor2 = int.parse(stdin.readLineSync()!);

  // Enquanto um dois valores forem diferente de 1, repita
  while (valor1 != 1 || valor2 != 1) {
    // Se valor1 ou valor2 derem mod 0 com i, entra
    if (valor1 % i == 0 || valor2 % i == 0) {
      
      // Detalhe: Na divisão abaixo há o "~", este é usado para não truncar uma divisão de números inteiros
      // mesmo testando que o resto da divisão seja igual a 0

      // Se valor1 diferente de 1 e mod == 0 com i entra
      if (valor1 % i == 0 && valor1 != 1) {
        // valor1 recebe ele mesmo divido pelo i
        valor1 ~/= i;
      }

      // Se valor1 diferente de 1 e mod == 0 com i entra
      if (valor2 % i == 0 && valor2 != 1) {
        // valor2 recebe ele mesmo divido pelo i
        valor2 ~/= i;
      }
      
      // cada vez que há divisão válida entre os valores e os primos (i), o mmc multiplica ele mesmo
      // com o número primo atual
      mmc *= i;
      //Se nenhum dos números for divisivel pelo i, e e ainda diferentes de 1, é adicionado mais 1 para i
    } else {
      i++;
    }
  }

  print('MMC comum de valor 1 e valor 2 é: $mmc');
}