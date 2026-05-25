import 'dart:io';

void main(){

  double total = 0;
  int contador = 0;

  do{
    contador++;
    stdout.write("Digite o ${contador}º número: ");
    double numero = double.parse(stdin.readLineSync() ?? '');
    total += numero; 
  }while(contador < 4);

  total /= contador;
  
  print("Média total: $total");
}