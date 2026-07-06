Future<void> main() async{
  print('Iniciando lançamento');

  for(int i = 10; i > 0; i--){
    await contagem(i);
  }
  print('Foguete lançado!');
}

Future<void> contagem(int valor) async{
  print(valor);
  await Future.delayed(Duration(seconds: 1));
}