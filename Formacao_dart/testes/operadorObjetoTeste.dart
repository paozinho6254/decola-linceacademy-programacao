void main() {

  final videoGame = new Produto(nome: 'Ps5', preco: 3000);
  final televisao = new Produto(nome: 'LG 40"', preco: 1000);

  print(videoGame + televisao);

}

class Produto {
  String nome;
  double preco;

  Produto({required this.nome, required this.preco});

  double getTaxa() {
    return preco * 0.02;
  }

  double operator +(Produto produto){
    return this.preco + produto.preco;
  }
}
