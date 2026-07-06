void main(){

  final numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  print("for: ${somaNumerosFor(numeros)}");
  print("while: ${somaNumerosWhile(numeros)}");
  print("recursão: ${somaNumerosRecursive(numeros)}");
  print("lista: ${somaNumerosLista(numeros)}");
}

int somaNumerosFor(List<int> numeros){
  int total = 0;
  for(var numero in numeros){
    total += numero;
  }
  return total;
}

int somaNumerosWhile(List<int> numeros){
  int total = 0;
  int i = 0;
  while(i < numeros.length){
    total += numeros[i];
    i++;
  }
  return total;
}

int somaNumerosRecursive(List<int> numeros){

  if(numeros.isEmpty){
    return 0;
  }
  return numeros.first + somaNumerosRecursive(numeros.sublist(1));
}

int somaNumerosLista(List<int> numeros){
  return numeros.reduce((total, numero) => total + numero,);
}