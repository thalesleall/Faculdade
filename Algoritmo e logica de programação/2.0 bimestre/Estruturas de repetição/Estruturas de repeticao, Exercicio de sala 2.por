programa
{
	/*Exercicio de fixação 2
	 * Construa um Algoritmo que calcule a média aritmetica de um conjunto de numeros pares que forem fornecidos pelo usuário. 
	 * O valor de finalização se´ra a entreda do número 0 (zero
	 * Observe que nada impede que o usuario forneça quantos números ímpares quiser, com a ressalva que eles não poderão ser acumulados. 
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

		enquanto(numeros != 0 ou cont == 0){
			leia(numeros)
			
			se (numeros == 0){
				escreva("Programa finalizado")
			}
			senao{
				cont = cont + 1
				se(numeros % 2 == 0){
					 acm = acm + numeros
					 contpar = contpar + 1
				}
				senao{
					escreva("Esse numero não é par, portanto nao foi somado! \n")
				}
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
 * @POSICAO-CURSOR = 923; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {acm, 10, 14, 3}-{cont, 12, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */