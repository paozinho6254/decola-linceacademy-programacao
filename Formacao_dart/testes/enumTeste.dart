import 'dart:io';

void main(){

  Cliente cliente = Cliente('Gerson', 20);

  stdout.write("Qual o seu nível de Cliente?\n"
  "1 - Normal\n"
  "2 - Cooperado\n"
  "3 - Assinante\n"
  "Resposta: ");
  int resposta = int.parse(stdin.readLineSync() ?? '');

  switch(resposta){
    case 1: cliente.tipoCliente = TipoCliente.normal;
    break;
    case 2 : cliente.tipoCliente = TipoCliente.cooperado;
    break;
    case 3: cliente.tipoCliente = TipoCliente.assinante;
    break;
    default: print("Nível inválido");
  }

  print(cliente);

  cliente.tipoCliente.mensagem(cliente);

}

enum TipoCliente{

  indefinido('Indefinido'),
  normal('Normal'),
  cooperado('Cooperado'),
  assinante('Assinante');

  final String nomeTipo;

  const TipoCliente(this.nomeTipo);

  void mensagem(Cliente cliente){
    
    switch(cliente.tipoCliente){
    case TipoCliente.normal: print("Este cliente é normal");
    break;
    case TipoCliente.cooperado: print("Este cliente é Cooperado");
    break;
    case TipoCliente.assinante: print("Este cliente é um assinante");
    break;
    default: print('Este cliente ainda está indefinido');
  }

  }

}

class Cliente{

  String nome; 
  int idade;
  TipoCliente tipoCliente = TipoCliente.indefinido;

  Cliente(this.nome, this.idade);

  @override
  String toString() {
    return "Cliente\nNome: $nome, Idade: $idade, Tipo de cliente: ${tipoCliente.nomeTipo}";
  }

}