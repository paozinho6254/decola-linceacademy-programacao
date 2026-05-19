// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Declaração de variável de tipo inteiro
  int qtdNumeros;
  // Lista para guardar valores de tipo inteiro
  List<int> numeros = [];

  stdout.write("Digite a quantidade de números: ");
  // Leitura de dados da variável
  qtdNumeros = int.parse(stdin.readLineSync() ?? '');

  // Laço for para se repetir na quantidade desejada
  for (int i = 0; i < qtdNumeros; i++) {
    stdout.write("Digite um número: ");
    // Leitura de dados da variável
    int valor = int.parse(stdin.readLineSync() ?? '');
    // Se a lista estiver vazia, o número inserido será logicamente o primeiro
    if (numeros.isEmpty) {
      numeros.add(valor);
      // Se não estiver vazia
    } else {
      // Se valor for maior que o primeiro da lista, assume o lugar, mas move o antigo menor 
      if (valor <= numeros.first) {
        // Inserção do numero na lista como primeiro
        numeros.insert(0, valor);
        // Caso não, testa se pelo menos é maior que o ultimo da lista (o maior)
      } else if (valor >= numeros.last) {
        // se for é adicionado em ultimo, o tornando o maior
        numeros.add(valor);
        // se não for nem o maior ou menor, o número é organizado na lista
      } else {
        // laço for que pega os valores já presentes 
        for (int j = 0; j < numeros.length; j++) {
          // testa até achar um valor maior que o número inserido
          if (valor < numeros[j]) {
            // ao achar ele colocado a frente do número maior encontrado
            numeros.insert(j, valor);
            // break usado para quebrar o for assim que for validada a condição
            break;
          }
        }
      }
    }
  }

  // Laço for para imprimir a lista
  for (int numero in numeros) {
    print(numero);
  }
}
