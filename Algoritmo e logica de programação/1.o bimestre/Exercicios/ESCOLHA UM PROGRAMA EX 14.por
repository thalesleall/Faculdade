programa
{
	
     inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro programas, n
		real n11
		escreva("Escolha uma opção abaixo: \n")
		escreva("      1 - Calcular o quadrado de um número \n")
		escreva("      2 - Descobrir se um numero é par \n")
		escreva("      3 - Escrever a palavra 'SONHO' \n")
		escreva("      4 - Calcular salário de um vendedor de carros \n")
		escreva("      5 - Sair do programa \n")
		leia(programas)

		escolha(programas){
			caso 1:
			escreva("Digite um numero para ser elevado ao quadrado: ")
			leia(n11)
			n11 = mat.potencia(n11, 2)
			escreva(n11)
			pare
			caso 2:
			escreva("Por favor, escreva um numero. \n")
			leia(n)
			se (n%2 == 0 ) {
				escreva("Esse numero é par")
			}
			senao {
				escreva("Esse numero é impar")
			}
			caso 3:
			escreva("Sonho")
			caso 4:
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 829; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */