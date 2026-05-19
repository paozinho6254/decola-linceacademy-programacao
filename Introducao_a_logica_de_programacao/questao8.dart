// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Declaração de variável de tipo inteiro
  int valor;

  stdout.write("Digite um número: ");
  // Leitura de dados da Variável
  valor = int.parse(stdin.readLineSync() ?? '');

  // Laço for para multiplicar valor por i
  for(int i = 1; i < 10; i++){
    print("${i} x $valor = ${valor*i}\n");
  }

}