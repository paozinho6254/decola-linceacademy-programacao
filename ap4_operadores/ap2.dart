void main(){

  List<String> listaValores  = ['10', '2XXL7', 'JOJ0', '99', '381', 'AD44', '47', '2B', '123', '78'];

  List<int> listaConvertida = converteInteiros(listaValores);

  print("Lista convertida: ${listaConvertida.join(', ')}");
}

List<int> converteInteiros(List<String> lista){
  return lista.map((valor) => int.tryParse(valor) ?? 0).toList(); 
}