programa
{
	
	funcao inicio()
	{
		real media, acm, MediaTurma
		inteiro cont
		acm = 0.0
		para(cont = 0; cont < 50; cont++){
			escreva("Digite a média do aluno: ")
			leia(media)
			acm = acm + media
		}
		MediaTurma = acm/50
		escreva("Media da turma = ", MediaTurma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */