programa
{
	
	funcao inicio()
	{
		real soma = 0.0, termo = 0.0
		inteiro i = 0, N = 0, numerador = 1000, denominador = 1, sinal = 1 

		escreva("Digite N: ")
		leia(N)

		para(i = 1; i < N; i++){
			termo = numerador / denominador
			soma = soma + sinal * termo

			numerador = numerador - 3
			denominador = denominador + 1

			sinal = sinal * -1
		}

		escreva("A soma dos primeiros, ", N, " termos da série é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 434; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */