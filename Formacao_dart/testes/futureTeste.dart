import 'dart:async';

void main() async {
  final future = Future.value(5);
  // await espera terminar o future para dai sim agregar o valor e poder dar print
  final numero = await future;
  print(numero);

  for (int i = 0; i < 2; i++) {
    print('A');
    future.then((value) => print(value));
    print('B');
  }

  print('Aqui um teste sobre o await de forma "Prática" digamos assim:');
  // o await é importante, pois se tira-lo, usuario recebe "Instance of 'Future<String>'"
  final usuario = await buscarUsuario();

  print(usuario);
  print("Se vê isso, felizmente o programa não quebrou em execução");

}

Future<String> buscarUsuario() async {
  print("Uno secundo...");
  await Future.delayed(Duration(seconds: 2));
  print("^-- Sim os 5's acima vieram só agora por conta da fila de prioridade");
  return 'Gerson';
}
