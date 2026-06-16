# 3ª interação com IA (Ferramenta utilizada: ChatGPT)

Pergunta: Por que devo evitar usar dynamic nos parâmetros de uma função?

Resposta:

O dynamic remove a verificação de tipos feita pelo compilador.

Exemplo:

void dobrar(dynamic valor) {
  print(valor * 2);
}

Isso funciona:

dobrar(10);

Mas isso pode gerar erro:

dobrar("Antônio");

Dependendo da operação realizada.

Uma alternativa mais segura:

void dobrar(int valor) {
  print(valor * 2);
}

Agora o Dart avisa o erro antes de executar.

Pergunta: Posso chamar uma função dentro dela mesma?

Resposta:

Sim. Isso é chamado de recursão.

Exemplo:

void contagem(int numero) {
  if (numero == 0) {
    return;
  }

  print(numero);
  contagem(numero - 1);
}

Resultado:
#3ª interação com IA (Ferramenta utilizada: ChatGPT)

Pergunta: Por que devo evitar usar dynamic nos parâmetros de uma função?

Resposta:

O dynamic remove a verificação de tipos feita pelo compilador.

Exemplo:

void dobrar(dynamic valor) {
  print(valor * 2);
}

Isso funciona:

dobrar(10);

Mas isso pode gerar erro:

dobrar("Antônio");

Dependendo da operação realizada.

Uma alternativa mais segura:

void dobrar(int valor) {
  print(valor * 2);
}

Agora o Dart avisa o erro antes de executar.

Pergunta: Posso chamar uma função dentro dela mesma?

Resposta:

Sim. Isso é chamado de recursão.

Exemplo:

void contagem(int numero) {
  if (numero == 0) {
    return;
  }

  print(numero);
  contagem(numero - 1);
}

Resultado:

5
4
3
2
1

A função chama ela mesma até atingir uma condição de parada.

Pergunta: Quando devo usar parâmetros obrigatórios, opcionais e nomeados?

Resposta: Obrigatórios

Quando a informação é essencial.

void cadastrarUsuario(String nome)

Não existe usuário sem nome.

Opcionais

Quando existe valor padrão ou a informação não é necessária.

void exibirMensagem(String texto, [bool maiusculo = false])

Uso:

exibirMensagem("Olá");

ou

exibirMensagem("Olá", true);
Nomeados

Quando existem muitos parâmetros.

void criarConta({
  required String nome,
  required String email,
  int idade = 0,
})

Uso:

criarConta(
  nome: "Antônio",
  email: "antonio@email.com",
);

Fica muito mais legível.
5
4
3
2
1

A função chama ela mesma até atingir uma condição de parada.

Pergunta: Quando devo usar parâmetros obrigatórios, opcionais e nomeados?

Resposta: Obrigatórios

Quando a informação é essencial.

void cadastrarUsuario(String nome)

Não existe usuário sem nome.

Opcionais

Quando existe valor padrão ou a informação não é necessária.

void exibirMensagem(String texto, [bool maiusculo = false])

Uso:

exibirMensagem("Olá");

ou

exibirMensagem("Olá", true);
Nomeados

Quando existem muitos parâmetros.

void criarConta({
  required String nome,
  required String email,
  int idade = 0,
})

Uso:

criarConta(
  nome: "Antônio",
  email: "antonio@email.com",
);

Fica muito mais legível.