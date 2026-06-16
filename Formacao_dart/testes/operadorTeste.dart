import 'dart:io';
import 'dart:math';

final aleatorio = Random();

void main() {
  final escolha = aleatorio.nextInt(3) + 1;
  final valores = {1: 'Receba', 2: 200, 3: 7.62};

  final tipo = valores[escolha];

  if (tipo is String) {
    print("String");
  }
  if (tipo is int) {
    print("Int");
  }
  if (tipo is double) {
    print("Double");
  }
  if (tipo is! num) {
    print("Ou seja não é numero");
  } else {
    print("É um numero");
  }


  Animal animal = Cachorro();

  (animal as Cachorro).latir();
}


class Animal {}

class Cachorro extends Animal {
  void latir() {
    print("Au au");
  }
}