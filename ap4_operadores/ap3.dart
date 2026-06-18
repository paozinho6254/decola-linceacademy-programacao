void main() {
  print(removeElemento([1, 2, 3], 2)); 

  print(removeElemento([1, 2, 3])); 

  print(removeElemento(null, 2)); 

  print(removeElemento(null)); 

  print(removeElemento([1, null, 3], null)); 
}

List removeElemento(List? lista, [dynamic elemento]) {
  lista = lista ?? [];
  lista.remove(elemento);

  return lista;
}
