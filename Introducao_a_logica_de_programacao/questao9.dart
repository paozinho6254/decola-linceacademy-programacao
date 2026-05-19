// Biblioteca para importar as funcionalidades básicas do Dart
import 'dart:io';

// Execução principal do programa
void main() {
  // Declaração de variáveis de tipo inteiro e Texto
  int vogal = 0, consoante = 0, letra = 0, palavra = 1;
  String texto;

  stdout.write("Escreva um texto: ");
  // Leitura de dados inteiros 
  texto = stdin.readLineSync() ?? '';

  // Laço for, cada letra representa o número de vezes que o laço irá se repetir
  for (int i = 0; i < texto.length; i++) {
    // Detalhe: contains é uma biblioteca básica de String, este evita que seja um if gigante verficando cada uma das vogais
    // Se a letra que parou não conter " .,;/(){}[]" (Até mesmo um espaço em branco) prossegue
    if(!" .,;/(){}[]".contains(texto[i])){
      // Se tiver qualquer uma das vogais abaixo contador adiciona mais 1 para letra e vogal
    if ("aeiouáàâãéêíóôõúAEIOUÁÀÂÃÉÊÍÓÔÕÚ".contains(texto[i])) {
      vogal++;
      letra++;
      // Se não, é contado o que sobra como consoante e letra
    } else {
      letra++;
      consoante++;
    }
    }
    // Caso não haja nada além de um espaço em branco, conta como mais uma palavra
    else if(texto[i] == " ") {
      palavra++;
      print(palavra);
    }
  }
  print("Total de vogais: ${vogal}\nTotal de consoantes: ${consoante}\nLetras totais: ${letra}\nPalavras totais: ${palavra}");
}
