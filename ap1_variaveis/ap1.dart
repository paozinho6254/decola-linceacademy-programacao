void main(){

  bool ativo = true;
  double peso = 70;
  int idade = 18;
  String nome = "Antônio", sobrenome = "Rocha da Silva";
  String? nacionalidade; // = "Brasileiro"

  print("Nome completo: $nome $sobrenome");
  print("$idade ${idade >= 18 ? "Maior de idade" : "Menor de idade"}");
  print("Situação: ${ativo == true ? "Ativo" : "Inativo"}");
  print("Peso: $peso");
  print("Nacionalidade: ${nacionalidade != null ? nacionalidade : "Nao informada"}");
}