void main() {
  final listaEstados = {
    'SC': ['Gaspar', 'Blumenau', 'Florianópolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'],
  };

  print("Estados: ${listaEstados.keys.join(' ; ')}");

  final listaSantaCatarina = listaEstados['SC']!;

  listaSantaCatarina.sort();
  print("Cidades de SC: ${listaSantaCatarina.join(' ; ')}");

  final listaCidades = [];

    for(var estado in listaEstados.keys){
      final cidadeOrdem = listaEstados[estado]!;
    
      for(var cidade in cidadeOrdem){
        listaCidades.add("$cidade - $estado");
      }
    }
    
    listaCidades.sort();

    for(var cidade in listaCidades){
      print(cidade);
    }

}
