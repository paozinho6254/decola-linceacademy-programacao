// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Declaração de variáveis de tipo Real
  double valor, total;

  stdout.write("Digite um valor: ");
  // Leitura de dados de variável
  valor = double.parse(stdin.readLineSync() ?? '');
  total = valor;
  // Laço for para executar o calculo do fatorial (Ex: total * 1 > total * 2)
  for(int i = 1; i < valor; i++){
    total *= i;
  }

  print("Fatorial: ${total}");


}