void main(){

  int diasUteis = 18;
  DateTime dataAtual = DateTime.now();

  DateTime dataCalculada = adicionarDias(diasUteis, dataAtual);

  print("Data atual: ${formatarData(dataAtual)}");
  print("Data calculada: ${formatarData(dataCalculada)}");
}

DateTime adicionarDias(int diasUteis, DateTime data){

  int diasPassados = 0;
  DateTime dataEsperada = data;

  while(diasPassados < diasUteis){
    dataEsperada = dataEsperada.add(Duration(days: 1));
    if(dataEsperada.weekday != DateTime.sunday && dataEsperada.weekday != DateTime.saturday){
      diasPassados++;
      print(dataEsperada.weekday);
    }
  }

  return dataEsperada;
}

String formatarData(DateTime data){
  String dia = data.day.toString().padLeft(2, '0');
  String mes = data.month.toString().padLeft(2, '0');
  String ano = data.year.toString();
  return '$dia/$mes/$ano';
}