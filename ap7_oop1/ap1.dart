class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    this.saldo += valor;
    imprimirSaldo();
  }

  void sacar(double valor) {
    if (valor > this.saldo) {
      print('Valor inválido, saldo insuficiente!');
    } else {
      this.saldo -= valor;
      imprimirSaldo();
    }
  }

  void imprimirSaldo() {
    print("Saldo atual: ${this.saldo}");
  }
}

void main() {
  final pessoa = ContaBancaria("Antum", 0);

  pessoa.depositar(200);
  pessoa.sacar(500);
  pessoa.imprimirSaldo();
}
