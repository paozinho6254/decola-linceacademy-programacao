# 2ª interação com IA (Ferramenta utilizada: ChatGPT)
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