import 'dart:math';

final aleatorio = Random();

enum GeneroMusical {
  rap('Rap'),
  postpunk('Post-punk'),
  rock('Rock'),
  pop('Pop');

  final String nome;

  const GeneroMusical(this.nome);
}

void main() {
  final escolha = aleatorio.nextInt(GeneroMusical.values.length);

  GeneroMusical genero = GeneroMusical.values[escolha];

  print("Meu gênero musical preferido e o ${genero.nome}");
}
