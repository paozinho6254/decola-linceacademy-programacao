class Retangulo{

  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea(){
    return altura*largura;
  }

}

void main(){
  final retangulo = Retangulo(40, 5);

  final area = retangulo.calcularArea();

  print("Área do retângulo: $area");
}