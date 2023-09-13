programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro  i, s, n

		s = 0
		escreva("Digite um valor para N:")
		leia(n)
		para(i = 0; i < -1; i++){
			s = 1 + (n/mat.potencia(n, 2))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 181; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */