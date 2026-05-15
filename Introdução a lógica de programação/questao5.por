programa
{
	funcao inicio()
	{
		real a, b, c, x1, x2, delta, raizDelta

		escreva("Insira os valores de a, b e c\n")
		escreva("a: ")
		leia(a)
		escreva("b: ")
		leia(b) 
		escreva("c: ")
		leia(c)

		se(a == 0){
			escreva("Esta não é uma equação de 2º grau")
		}
		senao{
			delta = (b*b) - 4 * a * c

			se(delta < 0){
				escreva("Não há raízes")
			}
			senao{
				raizDelta = delta
				para(inteiro i = 1; i <= 10; i++)		{
					raizDelta = (raizDelta + delta / raizDelta) / 2
				}

				x1 = (-b + raizDelta) / (2 * a)
				x2 = (-b - raizDelta) / (2 * a)

				escreva("X1 = ", x1, "\nX2 = ", x2)
	
			}
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 494; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */