abstract class Motor {
  void ignicao();
}

abstract class Eletrica {
  void ligar();
}

class Carro implements Motor, Eletrica {
  @override
  void ignicao() {
    print("Ignição... injetando gasolina... Dando Partida");
  }

  @override
  void ligar() {
    print('Ligando sistemas internos da ECU...');
  }
}


void main(){

    Carro hyundai = Carro();

    hyundai.ligar();
    hyundai.ignicao();

}