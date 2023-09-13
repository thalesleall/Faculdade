programa
{
	/* Construa um algoritmo que calcule a
		média aritmética de um conjunto de
		números pares fornecidos pelo usuário.
		O usuário irá fornecer um total de 10
		números.
		Observe que nada impede que o usuário
		forneça quantos números ímpares quiser,
		com a ressalva de que eles não poderão
		ser acumulados.
	
	*/
	funcao inicio()
	{
		real media, acm
		
		inteiro cont, numeros, contpar

		
		acm = 0.0
		numeros = 0
		cont = 0
		contpar = 0
		escreva("Escreva 10 numeros pares para calcular a media aritmetica \n")

		enquanto(cont != 10){
			leia(numeros)
			
				cont = cont + 1
				se(numeros % 2 == 0){
					 acm = acm + numeros
					 contpar = contpar + 1
				}
				senao{
					escreva("Esse numero não é par, portanto nao foi somado! \n")
				}
			}
		media = acm/contpar
		escreva("A media é: ", media)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 675; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */