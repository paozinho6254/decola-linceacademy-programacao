void main() {
  final produtos = {
    'Mouse': 79.90,
    'Teclado': 149.0,
    'Monitor': 899.0,
    'Notebook': 3500.0,
    'Headset': 199.0,
  };

  print("Produtos Disponíveis:");
  produtos.forEach((key, value){
    print("$key, Valor: $value");    
  });

  final acimaValor = [];
  produtos.forEach((key, value){
    if(value > 200){
      acimaValor.add(key);
    }
  });
  print("Produtos acima de R\$200: ${acimaValor.join(" ; ")}");

  var valorTotal = 0.0;
  for(var valor in produtos.values){
    valorTotal += valor;
  }

  print("Valor total do estoque: R\$$valorTotal");

  var maisCaro;
  produtos.forEach((key, value){
    if(maisCaro == null){
      maisCaro = value;
    }
    if(maisCaro < value){
      maisCaro = value;
    }
  });
  produtos.forEach((key, value){
    if(value == maisCaro){
      print("Produto mais caro: $key, R\$$value");
    }
  });

  final produtosOrdenados = [];
  produtos.forEach((key, value){
    produtosOrdenados.add("$key - R\$$value");
  });
  
  produtosOrdenados.sort();
  
  print("${produtosOrdenados.join("\n")}");

}
