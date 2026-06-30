class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  double desconto(double porcentagem) {
    return  preco - ((porcentagem / 100) * preco);
  }
}

void main() {
  final listaProdutos = [
    Produto('Televisão', 2000),
    Produto('Videogame', 1500),
    Produto('Microondas', 400),
    Produto('Geladeira', 1750),
    Produto('Mesa de madeira', 4000),
  ];

  for(var produto in listaProdutos){
    print("${produto.nome} valor com desconto aplicado: ${produto.desconto(20)}");
  }

}