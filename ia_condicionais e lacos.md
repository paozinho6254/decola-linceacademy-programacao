# 5ª interação com IA (Ferramenta utilizada: ChatGPT)

Pergunta: Qual a diferença entre usar if, else if e else?

Resposta:
O if é usado para verificar uma condição específica.
O else if serve para testar outras condições caso a primeira seja falsa.
Já o else é executado quando nenhuma das condições anteriores é verdadeira.

Exemplo:

int nota = 7;

if (nota >= 9) {
  print("Excelente");
} else if (nota >= 6) {
  print("Aprovado");
} else {
  print("Reprovado");
}

Pergunta: Qual a importância da palavra-chave break em um switch case?

Resposta:
O break é importante porque interrompe o switch após executar um caso.
Sem ele, o programa pode continuar executando os próximos cases, causando resultados inesperados.

Exemplo:

String dia = "segunda";

switch (dia) {
  case "segunda":
    print("Início da semana");
    break;

  case "sexta":
    print("Fim da semana");
    break;
}

Pergunta: Qual a diferença entre um loop for tradicional e um loop for...in?

Reposta:
O for tradicional é usado quando precisamos controlar índices ou quantidade de repetições.
O for...in é utilizado para percorrer elementos de listas e coleções de forma mais simples.

Exemplo com for:

for (int i = 0; i < 5; i++) {
  print(i);
}

Exemplo com for...in:

List nomes = ["Ana", "Carlos", "Maria"];

for (var nome in nomes) {
  print(nome);
}