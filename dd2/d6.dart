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

  // Empilha uma carta
  void empilhar(Carta carta) {
    _cartas.addLast(carta);
  }

  // Remove a carta do topo
  Carta remover() {
    return _cartas.removeLast();
  }

  bool get estaVazio => _cartas.isEmpty;
}

void main() {
  final baralho = Baralho();

  // Inserindo as cartas na ordem solicitada
  baralho.empilhar(Carta('A', Naipe.paus));
  baralho.empilhar(Carta('A', Naipe.copas));
  baralho.empilhar(Carta('A', Naipe.espadas));
  baralho.empilhar(Carta('A', Naipe.ouros));

  // Removendo todas as cartas do topo
  while (!baralho.estaVazio) {
    print(baralho.remover());
  }
}