void main() {

  // No enunciado é dito "Strings", por isso mais de uma String pode ser feita por meio uma lista
  final valores = ['asd23', '5412', 'man', '533'];

  // O que explica por que utilizo um for para repetir o processo
  for (var valor in valores) {
    try {
      int numero = converteString(valor);
      print("Numero digitado: $numero");
    } catch (e) {
      print('Entrada invalida. Insira apenas números inteiros.');
    }
  }
}

// Consequentemente não inserindo o try/catch na função
int converteString(String texto) {
  return int.parse(texto);
}
