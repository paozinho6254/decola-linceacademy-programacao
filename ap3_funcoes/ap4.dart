import 'dart:math';

final hexMap = {10: 'A', 11: 'B', 12: 'C', 13: 'D', 14: 'E', 15: 'F'};
final aleatorio = Random();

void main() {
  final temperaturas = List.generate(15, (_) => aleatorio.nextInt(5000) + 1);

  imprimirConversoes(temperaturas);
}

String convertBinario(int temperatura) {
  String binario = '';
  do {
    binario = (temperatura % 2).toString() + binario;
    temperatura ~/= 2;
  } while (temperatura > 0);

  return binario;
}

String convertOctal(int temperatura) {
  String octal = '';

  do {
    octal = (temperatura % 8).toString() + octal;
    temperatura ~/= 8;
  } while (temperatura > 0);

  return octal;
}

String convertHexadecimal(int temperatura) {
  String hexadecimal = '';
  do {
    int resto = temperatura % 16;
    if (resto > 9) {
      hexadecimal = hexMap[resto]! + hexadecimal;
    } else {
      hexadecimal = (resto).toString() + hexadecimal;
    }
    temperatura ~/= 16;
  } while (temperatura > 0);

  return hexadecimal;
}

void imprimirConversoes(List<int> temperaturas) {
  temperaturas.sort();

  for (int temperatura in temperaturas) {
    print(
      'decimal: $temperatura, '
      'binário: ${convertBinario(temperatura)}, '
      'octal: ${convertOctal(temperatura)}, '
      'hexadecimal: ${convertHexadecimal(temperatura)}',
    );
  }
}
