final hexMap = {10: 'a', 11: 'b', 12: 'c', 13: 'd', 14: 'e', 15: 'f'};

void main(){

  final numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];

  numeros.sort();

  for(var numero in numeros){

    print("decimal: $numero, binário: ${convertBinario(numero)}, octal: ${convertOctal(numero)}, hexadecimal: ${convertHexadecimal(numero)}");

  }
}


String convertBinario(int numero) {
  String binario = '';
  do {
    binario = (numero % 2).toString() + binario;
    numero ~/= 2;
  } while (numero > 0);

  return binario;
}

String convertOctal(int numero) {
  String octal = '';

  do {
    octal = (numero % 8).toString() + octal;
    numero ~/= 8;
  } while (numero > 0);

  return octal;
}

String convertHexadecimal(int numero) {
  String hexadecimal = '';
  do {
    int resto = numero % 16;
    if (resto > 9) {
      hexadecimal = hexMap[resto]! + hexadecimal;
    } else {
      hexadecimal = (resto).toString() + hexadecimal;
    }
    numero ~/= 16;
  } while (numero > 0);

  return hexadecimal;
}