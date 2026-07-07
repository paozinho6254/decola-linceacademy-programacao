import 'dart:math' as math;

void main() {
  final comparador = ComparadorFormasGeometricas();

  List<Forma> formas = [
    Circulo('Circulo A', 3),
    Circulo('Circulo B', 8),
    Retangulo('Retângulo A', 4, 3),
    Retangulo('Retângulo B', 19, 11),
    Quadrado('Quadrado A', 12),
    Quadrado('Quadrado B', 8),
    TrianguloEquilatero('Triângulo Equilátero A', 5),
    TrianguloEquilatero('Triângulo Equilátero B', 10),
    TrianguloRetangulo('Triângulo Retângulo A', 3, 4),
    TrianguloRetangulo('Triângulo Retângulo B', 5, 12),
    PentagonoRegular('Pentágono Regular A', 6),
    PentagonoRegular('Pentágono Regular B', 9),
    HexagonoRegular('Hexágono Regular A', 4),
    HexagonoRegular('Hexágono Regular B', 7),
  ];
  Forma maiorArea = formas.first;
  Forma maiorPerimetro = formas.first;

  for (Forma forma in formas.skip(1)) {
    maiorArea = comparador.formaDeMaiorArea(maiorArea, forma);
    maiorPerimetro = comparador.formaDeMaiorPerimetro(maiorPerimetro, forma);
  }

  print("Maior área:");
  print("${maiorArea.nome} -> ${maiorArea.area.toStringAsFixed(2)} unidades");

  print("Maior perímetro:");
  print(
    "${maiorPerimetro.nome} -> ${maiorPerimetro.perimetro.toStringAsFixed(2)} unidades",
  );
}


/// Requisito
/// UTILIZAR HERANÇA
abstract class Forma {
  String nome;

  Forma(this.nome);

  double get area;

  double get perimetro;
}

/// Requisito
/// UTILIZAR POLIMORFISMO
class Circulo extends Forma {
  Circulo(super.nome, this.raio);

  final double raio;

  double get area {
    return math.pi * math.pow(raio, 2);
  }

  double get perimetro {
    return 2 * math.pi * raio;
  }
}


class Retangulo extends Forma {
  Retangulo(super.nome, this.altura, this.largura);

  final double largura;
  final double altura;

  double get area {
    return altura * largura;
  }

  double get perimetro {
    return (altura * 2) + (largura * 2);
  }
}

class Quadrado extends Forma {
  Quadrado(super.nome, this.lado);

  final double lado;

  double get area => lado * lado;

  double get perimetro {
    return lado * 4;
  }
}

/// Requisito
/// INCLUIR TRIANGULO EQUILÁTERO
class TrianguloEquilatero extends Forma {

  TrianguloEquilatero(super.nome, this.lado);

  final double lado;

  double get area {
    return (math.sqrt(3) / 4) * lado * lado;
  }

  double get perimetro {
    return lado * 3;
  }
}

/// Requisito
/// INCLUIR TRIANGULO RETANGULO
class TrianguloRetangulo extends Forma {
  TrianguloRetangulo(super.nome, this.base, this.altura);

  final double base;
  final double altura;

  double get area {
    return (base * altura) / 2;
  }

  double get perimetro {
    final hipotenusa = math.sqrt((base * base) + (altura * altura));
    return base + altura + hipotenusa;
  }
}

/// Requisito
/// INCLUIR PENTAGONO REGULAR
class PentagonoRegular extends Forma {
  PentagonoRegular(super.nome, this.lado);

  final double lado;

  double get area {
    return (math.sqrt(25 + (10 * math.sqrt(5))) / 4) * lado * lado;
  }

  double get perimetro {
    return lado * 5;
  }
}

/// Requisito
/// INCLUIR HEXAGONO REGULAR
class HexagonoRegular extends Forma {
  HexagonoRegular(super.nome, this.lado);

  final double lado;

  double get area {
    return ((3 * math.sqrt(3)) / 2) * lado * lado;
  }

  double get perimetro {
    return lado * 6;
  }
}

/// Requisito
/// Limitar a classe para conter apenas 2 métodos
class ComparadorFormasGeometricas {
  Forma formaDeMaiorArea(Forma formaA, Forma formaB) {
    return (formaA.area >= formaB.area) ? formaA : formaB;
  }

  Forma formaDeMaiorPerimetro(Forma formaA, Forma formaB) {
    return (formaA.perimetro >= formaB.perimetro) ? formaA : formaB;
  }
}
