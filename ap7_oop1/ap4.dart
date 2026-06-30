import 'dart:math';

class Pessoa {
  String _nome;
  int? _idade;
  double _altura;

  Pessoa(this._nome, this._altura);

  set idade(int idade) {
    if (idade >= 0) {
      _idade = idade;
    } else {
      print("Idade inválida!");
    }
  }

  int? get idade {
    return _idade;
  }
}

final aleatorio = Random();

void main() {

  final pessoa = Pessoa('Gerson', aleatorio.nextDouble() * 1.3 + 1);

  int idade = aleatorio.nextInt(100) + 1;

  pessoa.idade = idade;

  print("Nome: ${pessoa._nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa._altura.toStringAsFixed(2)}");
}
