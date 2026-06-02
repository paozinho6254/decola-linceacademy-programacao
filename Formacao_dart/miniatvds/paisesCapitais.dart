void main() {
  final paisCapital = {
    'Brasil': 'Brasília',
    'Argentina': 'Buenos Aires',
    'Chile': 'Santiago',
    'Paraguai': 'Assunção',
    'Uruguai': 'Montevidéu',
  };

  final paises = paisCapital.keys;

  print(paises);

  final capitais = paisCapital.values.toList();
  capitais.sort();

  print(capitais);

  for(var capital in paisCapital.values){
    print("${paisCapital.keys} - $capital");
  }

  for(var pais in paisCapital.keys){
    print("$pais - ${paisCapital[pais]}");
  }
}
