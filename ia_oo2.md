# Algumas perguntas que fiz para LLM's como estudo da linguagem Dart

# 8ª interação com IA (Ferramenta utilizada: ChatGPT)

Pergunta: Com enums, possuo um código em que cliente escolhe entre 3 tipos de assinaturas/tipos de cliente, que forma prática de utilizar o Enum você recomenda?

Resposta:
Para esse cenário, enum é exatamente a ferramenta correta.

Porque:

os tipos são limitados;
previsíveis;
e fixos.

Exemplo conceitual:

enum TipoCliente {
  basico,
  premium,
  vip,
}

Isso é muito melhor do que usar:

String tipo = "premium";

porque evita:

erro de digitação;
strings inválidas;
comparações frágeis.

A forma mais prática e moderna hoje em Dart costuma ser:

1. Enum simples
enum TipoAssinatura {
  mensal,
  trimestral,
  anual,
}
2. Guardar o enum no objeto
class Cliente {
  String nome;
  TipoAssinatura assinatura;

  Cliente(this.nome, this.assinatura);
}
3. Usar switch
switch(cliente.assinatura){
  case TipoAssinatura.mensal:
    print('Plano mensal');
    break;

  case TipoAssinatura.trimestral:
    print('Plano trimestral');
    break;

  case TipoAssinatura.anual:
    print('Plano anual');
    break;
}

Isso é:

seguro;
legível;
escalável.

Pergunta: Sobre herança, me explique qual a diferença entre estes dois, e qual seria mais adequado em qualquer situação: 
Pessoa pessoa = new Cliente('123132', 'Ander', 24, 2000); 
Cliente pessoaCliente = new Cliente('12342', 'Pedro', 45, 66444); 
pessoa.mensagem(); 
pessoaCliente.mensagem();

Resposta: 
A diferença principal está no tipo da variável, não no objeto criado.

Nos dois casos, o objeto real é um Cliente.

O que muda é:

como o compilador enxerga esse objeto;
quais membros ficam acessíveis pela variável.
Caso 1
Pessoa pessoa = Cliente(...);

Aqui você está dizendo:

"Esse objeto será tratado como uma Pessoa."

Mesmo que o objeto internamente seja um Cliente.

Então a variável pessoa só poderá acessar:

membros definidos em Pessoa;
ou sobrescritos vindos de Pessoa.

Exemplo:

pessoa.nome
pessoa.idade
pessoa.mensagem()

Mas:

pessoa.saldo

não funcionaria se saldo existir apenas em Cliente.

Caso 2
Cliente pessoaCliente = Cliente(...);

Agora a variável conhece:

tudo de Cliente;
e tudo herdado de Pessoa.

Então pode acessar:

cpf;
nome;
idade;
saldo;
métodos específicos;
etc.

Pergunta: Quando devo utilizar os metodos estáticos de forma prática?

Resposta: 
Métodos estáticos fazem sentido quando a operação:

não depende do estado de um objeto;
não precisa acessar this;
e pertence conceitualmente à classe, não à instância.

Exemplo clássico:

Math.max(10, 20)

Você não cria:

Math math = Math();

porque não existe “estado” em um objeto Math.

A operação é apenas utilitária.

Em Dart:

class Conversor {
  static double celsiusParaFahrenheit(double c) {
    return (c * 1.8) + 32;
  }
}

Uso:

Conversor.celsiusParaFahrenheit(30);

Sem instanciar objeto.

Na prática, use static quando:

1. A lógica é utilitária

Exemplo:

conversões;
cálculos;
validações;
parsers;
helpers.
2. Não existe estado por objeto

Se o método:

não usa atributos da classe;
não depende de instância;

provavelmente pode ser estático.

3. O comportamento pertence ao “conceito”

Exemplo:

Usuario.validarEmail(...)

A validação pertence à ideia de usuário,
não a um usuário específico.

4. Factories auxiliares

Exemplo:

class Logger {
  static void erro(String msg){
    print('[ERRO] $msg');
  }
}

Uso:

Logger.erro('Falha');