import 'dart:math';

final aleatorio = Random();

void main(){

  final nomes = ['Ana', 'Francisco', 'Joao', 'Pedro', 'Gabriel', 'Rafaela', 'Marcio', 'Jose', 'Carlos', 'Patricia', 'Helena', 'Camila', 'Mateus', 'Gabriel', 'Maria', 'Samuel', 'Karina', 'Antonio', 'Daniel', 'Joel', 'Cristiana', 'Sebastião', 'Paula'];
  final sobrenomes = ['Silva', 'Ferreira', 'Almeida', 'Azevedo', 'Braga', 'Barros', 'Campos', 'Cardoso', 'Teixeira', 'Costa', 'Santos', 'Rodrigues', 'Souza', 'Alves', 'Pereira', 'Lima', 'Gomes', 'Ribeiro', 'Carvalho', 'Lopes', 'Barbosa'];

  final nome = nomes[aleatorio.nextInt(nomes.length)];
  final sobrenome = sobrenomes[aleatorio.nextInt(sobrenomes.length)];

  print("Nome: $nome $sobrenome");

}