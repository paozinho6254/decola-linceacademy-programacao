import 'dart:math';

void main() {
  final random = Random();

  // Objetivo: escolher um fornecedor aleatoriamente a cada refeição
  final fornecedores = <Fornecedor>[
    FornecedorDeBebidas(),
    FornecedorDeSanduiches(),
    FornecedorDeBolos(),
    FornecedorDeSaladas(),
    FornecedorDePetiscos(),
    FornecedorUltraCalorico(),
  ];

  final pessoa = Pessoa();
  // Objetivo: realizar refeições apenas enquanto necessário
  while (pessoa.precisaComer) {
    final fornecedor =
        fornecedores[random.nextInt(fornecedores.length)];

    pessoa.refeicao(fornecedor);
  }

  print('');
  pessoa.informacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  final String nome;
  final int calorias;
}

// Objetivo: utilizar abstração para representar fornecedores
abstract class Fornecedor {
  final Random random = Random();

  List<Produto> get produtos;

  Produto fornecer() {
    return produtos[random.nextInt(produtos.length)];
  }
}

// Objetivo: criar novos fornecedores
class FornecedorDeBebidas extends Fornecedor {
  @override
  List<Produto> get produtos => [
        Produto('Água', 0),
        Produto('Refrigerante', 200),
        Produto('Suco', 100),
        Produto('Energético', 135),
        Produto('Café', 60),
        Produto('Chá', 35),
      ];
}

class FornecedorDeSanduiches extends Fornecedor {
  @override
  List<Produto> get produtos => [
        Produto('Hambúrguer', 550),
        Produto('Sanduíche Natural', 250),
        Produto('X-Bacon', 700),
      ];
}

class FornecedorDeBolos extends Fornecedor {
  @override
  List<Produto> get produtos => [
        Produto('Bolo de Chocolate', 450),
        Produto('Bolo de Cenoura', 350),
        Produto('Cheesecake', 500),
      ];
}

class FornecedorDeSaladas extends Fornecedor {
  @override
  List<Produto> get produtos => [
        Produto('Salada Verde', 120),
        Produto('Salada Caesar', 280),
        Produto('Salada de Frutas', 180),
      ];
}

class FornecedorDePetiscos extends Fornecedor {
  @override
  List<Produto> get produtos => [
        Produto('Batata Frita', 400),
        Produto('Amendoim', 250),
        Produto('Salgadinho', 300),
      ];
}

class FornecedorUltraCalorico extends Fornecedor {
  @override
  List<Produto> get produtos => [
        Produto('Pizza Gigante', 1200),
        Produto('Combo Fast Food', 1500),
        Produto('Rodízio', 1800),
      ];
}

// Objetivo: utilizar enum para representar o status
enum StatusCalorias {
  deficitExtremo,
  deficit,
  satisfeito,
  excesso,
}

class Pessoa {
  final Random _random = Random();

  // Objetivo: definir calorias iniciais aleatórias
  late int _caloriasConsumidas = _random.nextInt(2501);

  int _refeicoesRealizadas = 0;


  // Objetivo: definir necessidade de refeições baseada
  // no nível de calorias
  bool get precisaComer => _caloriasConsumidas < 1800;

  StatusCalorias get status {
    if (_caloriasConsumidas <= 500) {
      return StatusCalorias.deficitExtremo;
    } else if (_caloriasConsumidas <= 1800) {
      return StatusCalorias.deficit;
    } else if (_caloriasConsumidas <= 2500) {
      return StatusCalorias.satisfeito;
    } else {
      return StatusCalorias.excesso;
    }
  }

  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();

    print(
      'Consumindo ${produto.nome} (${produto.calorias} calorias)',
    );

    _caloriasConsumidas += produto.calorias;
    _refeicoesRealizadas++;
  }

  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
    print('Refeições realizadas: $_refeicoesRealizadas');

    switch (status) {
      case StatusCalorias.deficitExtremo:
        print('Status: Déficit extremo de calorias');
        break;

      case StatusCalorias.deficit:
        print('Status: Déficit de calorias');
        break;

      case StatusCalorias.satisfeito:
        print('Status: Pessoa está satisfeita');
        break;

      case StatusCalorias.excesso:
        print('Status: Excesso de calorias');
        break;
    }
  }
}