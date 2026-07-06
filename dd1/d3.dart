void main() {
  String texto =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';

  int palavras = 1, vogais = 0, frases = 0;

  final consoantes = [];

  for (int i = 0; i < texto.length; i++) {
    if (!" ,;/(){}[]".contains(texto[i])) {
      if ("aeiouáàâãéêíóôõúAEIOUÁÀÂÃÉÊÍÓÔÕÚ".contains(texto[i])) {
        vogais++;
      } else if(".".contains(texto[i])){
        frases++;
      } else if(!consoantes.contains(texto[i])){
        consoantes.add(texto[i].toLowerCase());
      }
    } else if (texto[i] == " ") {
      palavras++;
    }
  }

  consoantes..sort();

  print("Parágrafo: $texto");
  print("Numero de palavras: $palavras");
  print("Tamanho do texto: ${texto.length}");
  print("Numero de frases: $frases");
  print("Numero de vogais: $vogais");
  print("Consoantes encontradas: ${consoantes.join(', ')}");

}
