Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}

Future<void> baixarImagens(List<String> urls) async{
  print("Baixando imagens...");
  for(var url in urls){
    await Future.delayed(Duration(seconds: 2));
    await baixarImagem(url);
  }

  print("Download concluído!");
}

Future<void> baixarImagem(String url) async{
    String imagemBaixada = url.split('/').last.split('.').first;
    print("Imagem <$imagemBaixada> baixada com sucesso!");
}