programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
        inteiro n1
        real raiz

        escreva("Digite o numero: \n")
        leia(n1)
        raiz = mat.raiz(n1, 2)
        escreva("A raiz do numero digitado é: ", raiz, "\n")
        escreva("A raiz do numero digitado é: ", mat.arredondar(raiz, 3))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 253; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */