import 'dart:math';

void main(){

  final aleatorio = Random();
  final listaNumeros = <int>[];

  for(int i = 0; i < 50; i++){
    listaNumeros.add(aleatorio.nextInt(12)+10);
  }

  final listaNumerosUnicos = <int>{...listaNumeros};

  print("Lista original: ${listaNumeros.join(' ; ')}");
  print("Itens únicos: ${listaNumerosUnicos.join(' ; ')}");
}