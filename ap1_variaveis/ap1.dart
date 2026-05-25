class Pessoa {
  bool ativo = true;
  double peso = 70;
  int idade = 18;
  final String nome = "Antônio", sobrenome = "Rocha da Silva";
  String? nacionalidade; // = "Brasileiro"

  @override
  String toString() {
    return "Nome: $nome,"
        "Sobrenome: $sobrenome, "
        "Idade: ${idade >= 18 ? 'Maior de idade' : 'Menor de idade'}, "
        "Peso: $peso, "
        "Situação: ${ativo == true ? 'Ativo' : 'Inativo'},"
        "Nacionalidade: ${nacionalidade != null ? '$nacionalidade' : 'Nao informada'}";
  }
}

void main() {
  Pessoa pessoa = Pessoa();

  print(pessoa);
}
