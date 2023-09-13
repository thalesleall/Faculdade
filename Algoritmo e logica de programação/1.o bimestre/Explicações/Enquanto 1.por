programa
{
	
	funcao inicio()
	{
		real n1, n2, n3, n4, media
		inteiro cont

		cont = 0
		enquanto (cont < 50)
		{
			escreva("Notas: \n")
			leia(n1, n2, n3, n4)
			media = (n1 + n2 + n3 + n4)/4
			escreva("A media é: ", media, "\n")
			se(media >=7){
				escreva("Aluno Aprovado. Parabens!\n")
			}
			senao{
				escreva("Aluno Reprovado. Estude mais!\n")
			}
			cont = cont + 1
			escreva(cont, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */