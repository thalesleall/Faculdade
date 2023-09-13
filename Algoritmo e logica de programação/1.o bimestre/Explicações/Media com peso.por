programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real n1, n2
		inteiro p1, p2 
		real media
		real sompeso
		cadeia nome

		escreva("Por favor, digite seu nome: ")
		leia(nome)
		escreva("\n Digite a nota da prova A: ")
		leia(n1)
		escreva("\n Digite a nota da prova B: ")
		leia(n2)
		escreva("\n Digite o peso da prova A: ")
		leia(p1)
		escreva("\n Digite o peso da prova B: ")
		leia(p2)
		sompeso = p1 + p2
		media = ((p1 * n1) + (p2 * n2))/sompeso
		escreva("\n A media do aluno " , nome, " é: " , mat.arredondar(media, 3) , ".")
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 105; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */