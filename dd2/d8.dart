import 'dart:math';

class Figura {
  final int codigo;
  final String nome;

  Figura(this.codigo, this.nome);

  @override
  String toString() {
    return 'Código: $codigo - $nome';
  }
}

class PacoteFiguras {
  final List<Figura> figuras;

  PacoteFiguras(List<Figura> todasFiguras)
      : figuras = gerarPacote(todasFiguras);

  static List<Figura> gerarPacote(List<Figura> figurasDisponiveis) {
    Random random = Random();
    List<Figura> pacote = [];

    for (int i = 0; i < 4; i++) {
      pacote.add(figurasDisponiveis[random.nextInt(figurasDisponiveis.length)]);
    }

    return pacote;
  }
}

class Album {
  final Map<int, Figura> _figuras = {};
  final List<Figura> repetidas = [];

  bool adicionarFigura(Figura figura) {
    if (_figuras.containsKey(figura.codigo)) {
      repetidas.add(figura);
      return false;
    }

    _figuras[figura.codigo] = figura;
    return true;
  }

  bool get completo => _figuras.length == 20;

  void imprimirAlbum() {
    print('\nÁLBUM COMPLETO');

    List<int> codigos = _figuras.keys.toList();
    codigos.sort();

    for (int codigo in codigos) {
      print(_figuras[codigo]);
    }
  }
}

void main() {
  List<Figura> figuras = [
    Figura(1, "Figura 1"),
    Figura(2, "Figura 2"),
    Figura(3, "Figura 3"),
    Figura(4, "Figura 4"),
    Figura(5, "Figura 5"),
    Figura(6, "Figura 6"),
    Figura(7, "Figura 7"),
    Figura(8, "Figura 8"),
    Figura(9, "Figura 9"),
    Figura(10, "Figura 10"),
    Figura(11, "Figura 11"),
    Figura(12, "Figura 12"),
    Figura(13, "Figura 13"),
    Figura(14, "Figura 14"),
    Figura(15, "Figura 15"),
    Figura(16, "Figura 16"),
    Figura(17, "Figura 17"),
    Figura(18, "Figura 18"),
    Figura(19, "Figura 19"),
    Figura(20, "Figura 20"),
  ];

  Album album = Album();

  while (!album.completo) {
    PacoteFiguras pacote = PacoteFiguras(figuras);

    for (Figura figura in pacote.figuras) {
      album.adicionarFigura(figura);
    }
  }

  print("Quantidade de figuras repetidas: ${album.repetidas.length}");

  album.imprimirAlbum();
}