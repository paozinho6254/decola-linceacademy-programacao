// Crie uma lista de inteiros e some todos os valores.

void main(){

  var numeros = [1, 2, 3, 4, 5];

  int total = 0;

  numeros.forEach((element) => total += element);

  print(total);

}