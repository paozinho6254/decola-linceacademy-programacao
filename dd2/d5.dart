import 'dart:math';

void main(){

  Lista listaCompras = Lista();

  listaCompras.cadastraProduto('Arroz', 3);
  listaCompras.cadastraProduto('Feijão', 4);
  listaCompras.cadastraProduto('Leite', 6);
  listaCompras.cadastraProduto('Farinha', 1);
  listaCompras.cadastraProduto('Óleo', 1);

  listaCompras.exibirDesejados();

  listaCompras.marcaComprado('Óleo');
  listaCompras.marcaComprado('Leite');
  listaCompras.marcaSemEstoque('Arroz');

  listaCompras.exibirProgresso();
}

class Lista{

  List<Produto> produtos = [];


  void cadastraProduto(String nome, int quantidade){
    produtos.add(Produto(nome, quantidade));
  }

  void marcaComprado(String nomeProduto){
    for(Produto produto in produtos){
      if(produto.nome.toLowerCase() == nomeProduto.toLowerCase()){
        produto.status = StatusItem.comprado;
      }
    }
  }

    void marcaSemEstoque(String nomeProduto){
    for(Produto produto in produtos){
      if(produto.nome.toLowerCase() == nomeProduto.toLowerCase()){
        produto.status = StatusItem.semEstoque;
      }
    }
  }

  void exibirDesejados(){
    for(Produto produto in produtos){
      if(produto.status == StatusItem.desejado){
        print("${produto.nome}: ${produto.quantidade}");
      }
    }
  }

  void exibirProgresso(){
    int contProgresso = 0;
    for(Produto produto in produtos){
      if(produto.status == StatusItem.comprado){
        contProgresso++;
      }
    }
    print("Progresso: $contProgresso/${produtos.length}");
  }

  void exibirPendenteAleatorio(){
    Random aleatorio = Random();
    List<Produto> pendentes = [];
    for(Produto produto in produtos){
      if(produto.status == StatusItem.desejado){
        pendentes.add(produto);
      }
    }
    
    Produto produtoPendente = pendentes[aleatorio.nextInt(pendentes.length)];

    print("Item escolhido aleatoriamente:");
    print("${produtoPendente.nome} - ${produtoPendente.quantidade}");

  }

}

class Produto{
  String nome;
  int quantidade;
  StatusItem status;

  Produto(this.nome, this.quantidade) : status = StatusItem.desejado;

}

enum StatusItem{
  desejado,
  comprado,
  semEstoque,
}