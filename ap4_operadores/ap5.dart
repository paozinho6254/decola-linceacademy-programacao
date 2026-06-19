void main(){

  Map<String, int?> pessoas = {"Nelson" : null , "Jane" : null, "Jack" : 16, "Rupert" : 37, "Andy" : 13, "Kim" : 27, "Robert" : 31};

  for(var pessoa in pessoas.entries){
    print("${pessoa.key} - ${pessoa.value ?? 'idade nao informada'}");
  }
}