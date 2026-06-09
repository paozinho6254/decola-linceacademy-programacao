import 'dart:math';

final aleatorio = Random();

void main(){
  int resultFuncaoB, resultFuncaoC;
  resultFuncaoB = funcaoA(funcaoB);

  resultFuncaoC = funcaoA(funcaoC);

  print(resultFuncaoB);
  print(resultFuncaoC);  
}

int funcaoA(Function funcao){
  final numeros = List.generate(2, (_) => aleatorio.nextInt(50));
  int resultado1 = funcao(numeros[0]);
  int resultado2 = funcao(numeros[1]);
  return resultado2 + resultado1;
}

int funcaoB(int numero){
  return numero * 5;
}

int funcaoC(int numero){
  return numero + 10;
}