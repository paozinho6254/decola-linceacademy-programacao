programa
{
	
	funcao inicio()
	{
		real a, b, c, hipotenusa
		escreva("Digite os valores dos catetos\n")
		escreva("a: ")
		leia(a)
		escreva("b: ")
		leia(b)

		c = b*b + a*a
		hipotenusa = c
		para(inteiro i = 1; i <= 10; i++)		{
			hipotenusa = (hipotenusa + c / hipotenusa) / 2
		}
		escreva("Hipotenusa: ", hipotenusa)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */