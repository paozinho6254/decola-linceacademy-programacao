void main(){

  List<int> lista1 = [1, 2, 3];
  List<int> lista2 = [4, 5, 6];
  var lista3 = null;

  bool isAtivo = true;

  // Checa de a lista não é nula se não ignora
  var lista = [0, ...lista1, ...lista2, ...?lista3];

  print(lista);

}