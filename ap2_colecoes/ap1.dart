import 'dart:math';

void main(){
  final aleatorio = Random();
  final listaNumeros = <int>[];

  // Atribuição dos valores na lista
  for(int i = 0 ; i < 10; i++){
    // Está 101 pois o random considera < 100, assim o 100 não entraria na lista, por isso 101
    listaNumeros.add(aleatorio.nextInt(101));
  }
  // Impressão dos números
  for(int i = 0; i < 10; i++){
    print("Posição: $i, valor: ${listaNumeros[i]}");
  }
}