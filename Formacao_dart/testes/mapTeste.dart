void main(){

  Map<int, String> ddds = Map<int, String>();

  ddds[47] = 'Blumenau';
  ddds[48] = 'Indaial';
  ddds[21] = 'Rio de Janeiro';
  ddds[11] = 'São Paulo';

  ddds.forEach((key, value) => print('$key => $value'),);

  ddds.keys.forEach((element){
    print(element);
  });

  ddds.values.forEach((element){
    print(element);
  });

  for(var entry in ddds.entries){

    print(entry);

  }

}