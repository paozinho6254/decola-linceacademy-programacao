void main(List<String> args) {
  final valor = int.parse(args[0]);

  contaBancaria(valor);
}

void contaBancaria(int valor) {
  final saldo = 100;

  if (valor > saldo) {
    throw SaldoInsuficienteException(valor, saldo);
  } 
  if(valor < 0){
    throw SaldoNegativoExeception(valor);
  }

  print("Valor retirado $valor");

}

class SaldoInsuficienteException implements Exception{
  // Atributos
  final valor;
  final saldo;
  // Construtor
  SaldoInsuficienteException(this.valor, this.saldo);
  // Método toString para passar a mensagem da Exception
  @override
  String toString() {
    return 'SaldoInsuficienteException. O valor passado $valor era maior que o saldo de $saldo';
  }
}

class SaldoNegativoExeception implements Exception{
  final valor;
 SaldoNegativoExeception(this.valor);
  @override
  String toString() {
    return 'SaldoNegativoException. O valor passado foi $valor';
  }
}