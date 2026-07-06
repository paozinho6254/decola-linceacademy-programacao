import 'dart:io';


void main() async {

  final arquivo = File("nomes.txt");

  for(int i = 0; i < 10; i++){
    arquivo.writeAsString(stdin.readLineSync() ?? '');
    arquivo.writeAsString('\n', mode: FileMode.append);
    final coisas = await arquivo.readAsString();
  }

  final conteudo = await arquivo.readAsString();

  print(conteudo);

}