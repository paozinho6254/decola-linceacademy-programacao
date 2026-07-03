import 'dart:math';

abstract class Calculadora{
  static int dobro(int numero){
    return numero * 2;
  }
}

final aleatorio = Random();

void main(){

  int numero = aleatorio.nextInt(1000)+1;
  print("O dobro do número $numero e: ${Calculadora.dobro(numero)}");
}