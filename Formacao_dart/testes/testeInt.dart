import 'dart:io';

void main(){

  int idade = 403;

  if(idade.isOdd){
    print("Número primo!");
  }
  else{
    print("Não é");
  }

  String numero = idade.toString();

  print(numero);
}