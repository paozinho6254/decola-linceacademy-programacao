void main(){

  final listaAnos = [2016, 1988, 2000, 2100, 2300, 1993];

  for(var ano in listaAnos){
    
    if(ehAnoBissexto(ano) == true){
      print("O ano $ano eh bissexto");
    } else{
      print("O ano $ano nao eh bissexto");
    }
  }
  
}

bool ehAnoBissexto(int ano){
  if(ano % 4 == 0){
    if(ano % 100 == 0){
      if(ano % 400 == 0){
        return true;
      }
      else{
        return false;
      }
    } else{
      return true;
    }
  }else{
    return false;
  }
}