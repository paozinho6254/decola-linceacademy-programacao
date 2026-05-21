import 'dart:io';

late double valor;

void main(){

  stdout.write("Digite o valor: ");
  valor = double.parse(stdin.readLineSync() ?? '');

  print("Valor digitado: $valor");

}