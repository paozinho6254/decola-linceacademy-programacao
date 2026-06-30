# Algumas perguntas que fiz para LLM's como estudo da linguagem Dart

# 6ª interação com IA (Ferramenta utilizada: ChatGPT)

Pergunta: Qual a finalidade do rethrow em um código?

Resposta: 
O rethrow serve para relançar uma exceção que foi capturada, preservando o erro original.

Pense assim:

"Eu capturei o erro,
talvez fiz algo com ele,
mas quero que ele continue subindo."
Exemplo simples
void main() {
  try {
    funcaoA();
  } catch (e) {
    print("Erro chegou no main");
  }
}

void funcaoA() {
  try {
    funcaoB();
  } catch (e) {
    print("Erro capturado em A");

    rethrow;
  }
}

void funcaoB() {
  throw Exception("Falha");
}

Saída:

Erro capturado em A
Erro chegou no main
O que aconteceu?
funcaoB() lançou erro.
funcaoA() capturou.
Fez alguma ação.
rethrow enviou o MESMO erro adiante.
main() capturou depois.
Por que isso é útil?

Muito comum para:

log;
auditoria;
debug;
limpeza de recursos;
adicionar contexto.

Pergunta: Por que ao criar uma exception preciso implementar a classe Exception

resposta: 
Na verdade, tecnicamente você não precisa.

Isto funciona:

class MinhaClasse {}

throw MinhaClasse();

O Dart permite lançar praticamente qualquer objeto.

Então por que fazemos:

class LoginException implements Exception {}

?

Porque isso comunica intenção.

Você está dizendo:

"Essa classe representa uma exceção da aplicação."
O benefício principal: semântica

Compare:

class Cachorro {}

e

class LoginException implements Exception {}

No segundo caso, qualquer desenvolvedor entende imediatamente:

"Essa classe foi criada para representar um erro."

Pergunta: Por que utilizar a classe exception junto ao throw

resposta: 
Porque Exception comunica claramente:

"Isto é um erro esperado/tratável da aplicação."

O throw sozinho apenas lança algo.

Exemplo:

throw "Erro";

Funciona.

Mas isso é ruim porque:

não há tipagem;
fica difícil identificar o tipo do problema;
o catch fica menos organizado;
o código perde padronização.
Com Exception
throw Exception("Divisão por zero");

fica muito mais claro.

Você está dizendo:

"Ocorreu uma exceção durante a execução."
O grande benefício: tratamento organizado

Imagine:

try {
  throw Exception("Erro");
} catch (e) {
  print(e);
}

Agora imagine vários tipos diferentes:

class LoginException implements Exception {}
class PagamentoException implements Exception {}
class RedeException implements Exception {}

Você pode capturar separadamente:

try {

} on LoginException {
  print("Erro de login");
} on RedeException {
  print("Sem internet");
}

Isso é muito mais poderoso do que lançar strings.

Por que não lançar apenas String?

Isto:

throw "Senha inválida";

funciona.

Mas agora imagine um sistema grande.

Como distinguir:

erro de login;
erro de rede;
erro de banco;
erro de permissão?

Você teria que comparar texto:

if (e == "Senha inválida")

o que é frágil e ruim de manter.