import 'dart:collection';
import 'dart:math';

class GeradorNome {
  static final List<String> nomes = [
    'Ana',
    'João',
    'Carlos',
    'Mariana',
    'Pedro',
    'Lucas',
    'Fernanda',
    'Juliana',
    'Rafael',
    'Beatriz'
  ];

  static final List<String> sobrenomes = [
    'Silva',
    'Souza',
    'Oliveira',
    'Santos',
    'Costa',
    'Pereira',
    'Almeida',
    'Ferreira',
    'Rodrigues',
    'Lima'
  ];

  static final Random random = Random();

  String gerarNomeAleatorio() {
    String nome = nomes[random.nextInt(nomes.length)];
    String sobrenome = sobrenomes[random.nextInt(sobrenomes.length)];

    return '$nome $sobrenome';
  }
}

class Pessoa {
  final String nomeCompleto;

  Pessoa(this.nomeCompleto);

  @override
  String toString() => nomeCompleto;
}

class FilaMercado {
  final Queue<Pessoa> fila = Queue<Pessoa>();

  void entrarNaFila(Pessoa pessoa) {
    fila.addLast(pessoa);
    print('${pessoa.nomeCompleto} entrou na fila');
  }

  Pessoa atenderPessoa() {
    Pessoa pessoa = fila.removeFirst();
    print('${pessoa.nomeCompleto} foi atendido(a)');
    return pessoa;
  }

  bool get filaVazia => fila.isEmpty;
}

void main() {
  final gerador = GeradorNome();
  final fila = FilaMercado();

  for (int i = 0; i < 10; i++) {
    fila.entrarNaFila(Pessoa(gerador.gerarNomeAleatorio()));
  }

  print('\nIniciando atendimento...\n');

  while (!fila.filaVazia) {
    fila.atenderPessoa();
  }
}