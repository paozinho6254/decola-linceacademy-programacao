import 'dart:math';

final aleatorio = Random();
void main() {
  double base = aleatorio.nextDouble() * 99;
  double altura = aleatorio.nextDouble() * 99;
  try {
    final retangulo = Retangulo(base, altura);
    double areaRetangulo = retangulo.calcularArea();
    print("Area do retângulo: ${areaRetangulo.toStringAsFixed(2)}");
  } catch (e) {
    print(e);
  }
}

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  double _base;
  double _altura;

  Retangulo(this._base, this._altura){
    if (_altura <= 0 || _base <= 0) {
      throw Exception('Dimensões inválidas, informe apenas valores positivos maiores que zero');
    }
  }

  @override
  double calcularArea() {
    return _base * _altura;
  }
}
