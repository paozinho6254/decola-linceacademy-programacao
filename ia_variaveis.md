#Algumas perguntas que fiz para LLM's como estudo da linguagem Dart

#1ª interação com IA (Ferramenta utilizada: ChatGPT)
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

