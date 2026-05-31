// Percorra a lista e descubra o maior valor.

void main(){

  var numeros = [4, 7, 10, 50, 200];

  var maior;

  for(int numero in numeros){
    if(numeros[numero] == 0){
      maior = numero;
    }
    if(numero > maior){
      maior = numero;
    }
  }

  print(maior);

}

