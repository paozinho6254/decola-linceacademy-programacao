import 'dart:math';

final aleatorio = Random();

void main(){
  List <int> lista1 = List.generate(5, (_) => aleatorio.nextInt(101));
  List <int> lista2 = List.generate(5, (_) => aleatorio.nextInt(101));
  
  imprimeLista(lista1);
  imprimeLista(lista2);

  List <int> lista3 = somaLista(lista1, lista2);

  imprimeLista(lista3);
}

void imprimeLista(List<int> lista){
  if(lista.isEmpty){
    print("Lista vazia");
  }
  else{
    print("Lista: ${lista.join(', ')}");
  }
}

List<int> somaLista(List<int> lista1, List<int> lista2){
  if(lista1.length != lista2.length){
    return [];
  }

  List<int> lista3 = [];

  for(int i = 0; i < lista1.length; i++){
    print("${lista1[i]}+${lista2[i]}");
    lista3.add(lista1[i] + lista2[i]);
  }
  return lista3;
}

