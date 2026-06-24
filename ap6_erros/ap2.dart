void main() {

  try{
    pegaImpar(67);
    print('Entrada correta, você inseriu um número par');
  }catch(e){
    print(e);
  }
}
void pegaImpar(int numero) {
  if(numero.isOdd) throw Exception('Entrada inválida. Insira apenas números pares.');
}
