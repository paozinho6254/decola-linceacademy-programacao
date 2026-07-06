void main() async {

  print("Começando a buscar dados...");

  print("Buscando dados...");

  await buscarDados();

  print("Dados achados!");

}

Future<void> buscarDados() async{
  await Future.delayed(Duration(seconds: 3));
}