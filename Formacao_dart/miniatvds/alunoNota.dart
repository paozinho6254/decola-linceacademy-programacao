void main() {
  
  final alunoNotas = {
    'João': 8.5,
    'Maria': 9.0,
    'Pedro': 6.5,
    'Ana': 7.8,
    'Lucas': 5.9,
  };
  print("Alunos: ");
  alunoNotas.forEach((key, value){
    print("$key Nota: $value");
  });

  final alunosMedia = [];
  alunoNotas.forEach((key, value){
    if(value >= 7){
      alunosMedia.add(key);
    }
  });

  print("Alunos acima de 7: ${alunosMedia.join(" ; ")}");

  double media = 0;
  for(var nota in alunoNotas.keys){
    media += alunoNotas[nota]!;
  }
  media /= alunoNotas.values.length;
  print("Média aritmética das notas: $media");

  var maior;
  alunoNotas.forEach((key, value){
    if(maior == null){
      maior = value;
    }
    if(maior < value){
      maior = value;
    }
  });

  alunoNotas.forEach((key, value){
    if(value == maior){
      print("Aluno com a maior nota: $key $value");
    }
  });

  final alunosOrdenados = alunoNotas.keys.toList();

  alunosOrdenados.sort();

  print("Alunos em ordem alfabética: ${alunosOrdenados.join(" ; ")}");

}