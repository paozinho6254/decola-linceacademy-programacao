programa
{
	
	funcao inicio()
	{
		inteiro numeros[5]
		inteiro valor

		para(inteiro i = 0; i < 5; i++){
			escreva("Digite o ",i+1,"º valor: ")
			leia(valor)
			numeros[i] = valor
		}
		escreva("Valores Impar recebidos: \n")
		para(inteiro i = 0; i < 5; i++){
			se(numeros[i] % 2 != 0){
				escreva(numeros[i],"\n")
			}

		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 330; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */