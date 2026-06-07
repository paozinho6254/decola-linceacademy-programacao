Algumas perguntas que fiz para LLM's como estudo da linguagem Dart

1ª interação com IA (Ferramenta utilizada: ChatGPT)
Pergunta: Em Dart, quais cuidados devo ter ao criar variáveis que podem receber null?
Resposta: É importante usar variáveis nulas apenas quando realmente fizer sentido no contexto do programa. Sempre tente validar o valor antes de utilizá-lo, usando operadores como ?, ?? e !. Isso evita erros de execução relacionados a valores nulos inesperados.

Pergunta: Qual a diferença prática entre usar final e const em Dart?
Resposta: final é usado quando o valor será definido apenas uma vez, mas pode ser conhecido em tempo de execução. Já const é usado para valores constantes definidos em tempo de compilação, como números fixos e textos imutáveis.

Pergunta: Quando vale a pena usar o modificador late no Dart?
Resposta: O late é útil quando a variável será inicializada depois da declaração, mas você garante que ela terá valor antes do uso. É comum em variáveis que dependem de inicialização tardia, como controllers ou dados carregados posteriormente.

Pergunta: Quais erros devo evitar ao declarar variáveis em Dart?
Resposta: Evite nomes genéricos como x ou valor1, não utilize tipos desnecessariamente dinâmicos (dynamic) e tente sempre deixar claro o propósito da variável. Também é recomendado inicializar variáveis corretamente para evitar problemas com valores nulos.

Pergunta: Como funciona o método split() nas strings em Dart?
Resposta: O método split() divide um texto em partes usando um separador. Por exemplo, ao usar uma vírgula como separador, a string é transformada em uma lista de palavras ou valores separados por vírgula.

2ª interação com IA (Ferramenta utilizada: ChatGPT)
Pergunta: Por que um Map é mais adequado do que uma List para armazenar países e capitais?
Resposta: Um Map foi criado para armazenar relações do tipo chave → valor.

Imagine uma agenda telefônica:

Antônio -> 99999-9999
Maria   -> 88888-8888
João    -> 77777-7777

Você não quer procurar o telefone percorrendo toda uma lista. Você quer informar o nome e obter diretamente o telefone.

Da mesma forma:

Map<String, String> paisCapital = {
  "Brasil": "Brasília",
  "Chile": "Santiago"
};

Podemos fazer:

print(paisCapital["Brasil"]);

Resultado: Brasília

Com uma lista isso seria muito mais trabalhoso.

Pergunta: Qual a diferença entre keys, values e entries?
Resposta: Considere:
Map<String, String> paisCapital = {
  "Brasil": "Brasília",
  "Chile": "Santiago"
};

keys = Retorna apenas as chaves:

print(paisCapital.keys);

Resultado: (Brasil, Chile)

values = Retorna apenas os valores:

print(paisCapital.values);

Resultado: Brasília, Santiago

entries

Retorna os pares completos:

for(var item in paisCapital.entries){
  print(item);
}

Resultado:
MapEntry(Brasil: Brasília)
MapEntry(Chile: Santiago)

Pense em uma planilha:

Chave	Valor
Brasil	Brasília
Chile	Santiago
keys = primeira coluna
values = segunda coluna
entries = linha inteira

Pergunta: Por que não conseguimos descobrir a chave apenas percorrendo values?
Resposta: Porque um valor não sabe quem é sua chave.

Exemplo:

{
  "SC": "Blumenau",
  "PR": "Curitiba"
}

Quando você faz:

for(var cidade in mapa.values)

a variável cidade recebe apenas:

Blumenau
Curitiba

Ela não carrega junto:

SC
PR

Pergunta: Qual é a diferença entre percorrer um mapa usando keys e usando entries?
Resposta: Utilizando keys

for(var pais in paisCapital.keys){
  print("$pais - ${paisCapital[pais]}");
}

Fluxo:

Obtém a chave.
Procura o valor correspondente.
Utilizando entries
for(var item in paisCapital.entries){
  print("${item.key} - ${item.value}");
}

Fluxo:

Por isso muitos programadores preferem entries quando precisam trabalhar simultaneamente com chave e valor.
