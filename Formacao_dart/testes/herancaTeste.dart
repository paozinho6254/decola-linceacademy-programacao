class Pessoa{

  final String cpf;
  String nome;
  int idade;

  Pessoa(this.cpf, this.nome, this.idade,);

  void mensagem(){
    print("Mandando mensagem");
  }

}

class Cliente extends Pessoa{

  double saldo;

  Cliente(super.cpf, super.nome, super.idade, this.saldo);

  
  void mensagemCliente(){
    print('Esta é uma mensagem apenas de clientes, e não pessoas');
  }

}

void main(){

  Pessoa pessoa = new Cliente('123132', 'Ander', 24, 2000);

  Cliente pessoaCliente = new Cliente('12342', 'Pedro', 45, 66444);

  // Como pessoa, é de tipo Pessoa, mesmo que seja um "Cliente" ainda não possui os mesmos acesso que um Cliente real
  //pessoa.mensagemCliente();
  pessoaCliente.mensagemCliente();

}