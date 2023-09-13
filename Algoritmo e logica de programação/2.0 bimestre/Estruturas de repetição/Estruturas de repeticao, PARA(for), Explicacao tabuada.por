programa
{
	
	funcao inicio()
	{
		real numero
		inteiro cont

		escreva("Escreva um numero para ser calculado a sua tabuada: ")
		leia(numero)

		para(cont = 1; cont <=10; cont++){
			escreva(cont, " X ", numero, " = ", cont*numero, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 173; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */