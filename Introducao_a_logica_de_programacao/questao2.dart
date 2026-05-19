// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Lista para guardar números inteiros
  List<int> numeros = [];

  // Laço for para digitar 5 números
  for (int i = 0; i < 5; i++) {
    stdout.write('Digite o ${i + 1}º valor: ');
    // Leitura de dados da variável
    int valor = int.parse(stdin.readLineSync()!);
    // Adição de valores da variável na lista
    numeros.add(valor);
  }

  print('Valores Ímpares recebidos:');

  // Laço for para digitar números que são impares
  for (int numero in numeros) {
    // Imprime se for impar
    if (numero % 2 != 0) {
      print(numero);
    }
  }
}