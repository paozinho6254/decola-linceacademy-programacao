programa
{
	
	funcao inicio()
	{
		inteiro valor1, valor2
		inteiro i = 2, mmc = 1
		escreva("Digite valor 1: ")
		leia(valor1)
		escreva("Digite valor 2: ")
		leia(valor2)

		enquanto(valor1 != 1 ou valor2 != 1){
			se(valor1 % i == 0 ou valor2 % i == 0){
				
				escreva(valor1, " ", valor2, " ",i, "\n")
			
				se(valor1 % i == 0 e valor1 != 1){
					valor1 = valor1 /i
				}
			
				se(valor2 % i == 0 e valor2 != 1){
					valor2 = valor2 /i
				}
				
				mmc *= i
		}
		senao{
			i++
		}

		}
		
		escreva("MMC comum de valor 1 e valor 2 é : ", mmc)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 42; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */