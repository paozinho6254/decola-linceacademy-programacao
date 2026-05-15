programa
{
	
	funcao inicio()
	{
		inteiro valor1, valor2

		escreva("Digite valor 1: ")
		leia(valor1)

		escreva("Digite valor 2: ")
		leia(valor2)

		se(valor1 > valor2){
			escreva("Total absoluto positivo: ", valor1 - valor2)
		}
		senao{
			escreva("Total absoluto positivo: ", valor2 - valor1)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */