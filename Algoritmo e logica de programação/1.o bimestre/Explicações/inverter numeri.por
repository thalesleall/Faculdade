programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro un, dez, cen, n
		escreva("Entre com um numero de três digitos ")
		leia(n)
		un = n % 10
		cen = n/100
		dez = (n / 10) % 10
		escreva(un, dez, cen)
		escreva("\n numero invertido é: ", (un*100)+(dez*10)+cen)
				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 293; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */