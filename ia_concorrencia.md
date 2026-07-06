# Algumas perguntas que fiz para LLM's como estudo da linguagem Dart

# 9ª interação com IA (Ferramenta utilizada: ChatGPT)

Pergunta: Como o Future funciona no Dart e por que ele é importante para tarefas demoradas?

Resposta:
No Dart, um Future representa um valor que ainda será obtido no futuro. Ele é usado quando uma operação demora um certo tempo para terminar, como buscar dados de uma API, ler arquivos ou acessar um banco de dados.

Sem Future, o programa ficaria “travado” esperando a tarefa terminar. Com programação assíncrona, o aplicativo continua funcionando enquanto aguarda o resultado.

Exemplo:

Future<String> buscarDados() async {
  await Future.delayed(Duration(seconds: 2));
  return "Dados carregados";
}

Nesse caso, o programa espera 2 segundos sem bloquear a execução principal.

Pergunta: Como posso tratar erros em operações assíncronas com Future?

Reposta:
Quando um Future falha, ele lança uma exceção. Para evitar que o aplicativo quebre, é importante tratar esses erros usando try e catch.

Exemplo:

Future<void> carregarUsuario() async {
  try {
    String resultado = await buscarDados();
    print(resultado);
  } catch (erro) {
    print("Ocorreu um erro: $erro");
  }
}

O try executa a operação e o catch captura possíveis falhas, permitindo mostrar mensagens de erro ou tomar outras ações.


Pergunta: Como executar várias tarefas assíncronas ao mesmo tempo no Dart?

Resposta:
O Dart permite executar múltiplas operações assíncronas em paralelo usando Future.wait(). Isso é útil quando várias tarefas independentes podem ocorrer simultaneamente.

Exemplo:

Future<void> executarTarefas() async {
  var resultados = await Future.wait([
    Future.delayed(Duration(seconds: 2), () => "Tarefa 1"),
    Future.delayed(Duration(seconds: 1), () => "Tarefa 2"),
  ]);

  print(resultados);
}

Nesse exemplo, as duas tarefas começam juntas. O programa aguarda ambas terminarem antes de continuar. Isso melhora o desempenho e reduz o tempo total de espera.