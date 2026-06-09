void escreverElemento(int element) => print(element);

void multiplicarElemento(int element) => print(element *2);
void main(){
  var lista = [1,2,3];

  lista.forEach(multiplicarElemento);
}