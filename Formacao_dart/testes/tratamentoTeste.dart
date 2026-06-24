void main(args) {
  try{
    try {
    gerarErro(int.parse(args[0]));
  } on Valor1Exception{
    print('Valor 1');
    rethrow;
  } on Valor2Exception{
    print('Valor 2');
  } on Valor3Exception{
    print('Valor 3');
  }
  on Exception catch (e) {
    print('Só não crashou por minha causa: $e');
  } catch (e) {
    print('Ouve um erro');
  } finally{
    print("Apesar do erro aqui ainda aparece");
  }
  } on Valor1Exception{
    print('Valor 1 foi capturado durante a execução deste código');
  }
}

void gerarErro(int valor) {
  if (valor == 1) {
    throw Valor1Exception();
  }
  if (valor == 2) {
    throw Valor2Exception();
  }

  if (valor == 3) {
    throw Valor3Exception();
  }
  if(valor == 4){
    dynamic numero = true;
    numero++;
  }
  throw Exception('Valor inserido indisponível, valor: $valor');
}

class Valor1Exception implements Exception{}

class Valor2Exception implements Exception{}

class Valor3Exception implements Exception{}