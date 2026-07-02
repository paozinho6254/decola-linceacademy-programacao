abstract class Animal{
  void comer();
  void beber();

}

class Lince extends Animal{

  @override
  void comer(){
    print('O animal esta comendo.');
  }

  void beber(){
    print("O animal esta bebendo.");
  }

  void rugir(){
    print("O Lince esta rugindo.");
  }

}

void main(){

  final animal = Lince();

  animal.beber();
  animal.comer();
  animal.rugir();

}