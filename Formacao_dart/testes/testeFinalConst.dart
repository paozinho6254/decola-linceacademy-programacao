import 'dart:io';

void main(){

  // Roda
  final listaFinal = ["Dart", "Java"];

  listaFinal.add("Python");

  print(listaFinal);

  // Não roda
  const listaConst = ["Dart", "Java"];

  listaConst.add("Python");

  print(listaConst);

}