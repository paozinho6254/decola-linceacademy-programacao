import 'dart:math';

final aleatorio = Random();
void main() {
  final listaNumeros = List.generate(5, (i) => i = aleatorio.nextInt(25) + 1);

  for(var numero in listaNumeros){
    print(getLetra(numero));
  }
}

String getLetra(int numero) {
  String letra = String.fromCharCode(numero + 64);
  return 'Numero $numero -> Letra $letra';
}
