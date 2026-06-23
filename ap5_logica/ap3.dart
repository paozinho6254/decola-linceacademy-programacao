import 'dart:math';

final aleatorio = Random();

void main() {
  int numero = aleatorio.nextInt(900) + 100;
  int somaTotal = somaBase(numero);
  print("A soma dos números pares entre 0 e $numero e $somaTotal");
}

int somaBase(int numeroMax) {
  int somaTotal = 0;
  for (int i = 0; i <= numeroMax; i++) {
    if (!i.isOdd) {
      somaTotal += i;
    }
  }

  return somaTotal;
}
