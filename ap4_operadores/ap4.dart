void main(){

    double valor = 10.0;
    double valorVendido = valor - 3;
    final porcentagem = getPercent(valor, valorVendido);

    print("O produto custava $valor reais, foi vendo por $valorVendido reais. O desconto dado foi $porcentagem%.");

}

int getPercent(double valor, double valorVendido){
    return (100 -((valorVendido * 100) / valor)).toInt();
}