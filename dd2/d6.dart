import 'dart:collection';

enum Naipe {
  paus,
  copas,
  espadas,
  ouros;
}

class Carta {
  final String valor;
  final Naipe naipe;

  Carta(this.valor, this.naipe);

  @override
  String toString() {
    return '$valor$naipe';
  }
}

class Baralho {
  final Queue<Carta> _cartas = Queue<Carta>();

  void empilhar(Carta carta) {
    _cartas.addLast(carta);
  }

  Carta remover() {
    return _cartas.removeLast();
  }

  bool get estaVazio => _cartas.isEmpty;
}

void main() {
  final baralho = Baralho();

  baralho.empilhar(Carta('A', Naipe.paus));
  baralho.empilhar(Carta('A', Naipe.copas));
  baralho.empilhar(Carta('A', Naipe.espadas));
  baralho.empilhar(Carta('A', Naipe.ouros));

  while (!baralho.estaVazio) {
    print(baralho.remover());
  }
}