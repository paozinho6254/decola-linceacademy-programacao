import 'dart:math';

void main() {
  final aleatorio = Random();
  final listaNumeros = <int>[];

  for (int i = 0; i < 50; i++) {
    listaNumeros.add(aleatorio.nextInt(16));
  }

  final listaNumerosImpar = listaNumeros.where((item) => item.isOdd).toList();

  print("Lista original: ${listaNumeros.join(' ; ')}");
  print("Lista atualizada: ${listaNumerosImpar.join(' ; ')}");
}
