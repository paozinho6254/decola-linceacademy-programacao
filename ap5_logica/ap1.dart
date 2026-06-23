void main() {
  final lista = List.generate(100, (i) => i);

  getListaImpar(lista);

  for(var numero in lista){
    print("Impar: $numero");
  }
}

List getListaImpar(List lista) {
  lista.removeWhere((numero) => numero % 2 == 0);
  return lista;
}
