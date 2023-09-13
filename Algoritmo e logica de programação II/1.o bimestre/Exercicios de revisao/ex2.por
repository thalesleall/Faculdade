programa
{
	//Fazer um algoritmo que leia os lados de um retângulo, calcule e imprima a área e o perímetro.
	funcao inicio()
	{
		inteiro l1 = 0, l2 = 0, area = 0, perimetro = 0

		
		escreva("Digite a base do retangulo: ")
		leia(l1)
		
		escreva("Digite a altura do retangulo: ")
		leia(l2)
		
		se(l1 > 0 e l2 > 0) {
			area = l1 * l2
			perimetro = (l1*2) + (l2*2)
			escreva("Area: ", area)
			escreva("\nPerimetro: ", perimetro)
		}
		senao{
			enquanto(l1 <= 0 ou l2 <= 0){
				escreva("NUMEROS INVALIDOS, DIGITE NOVAMENTE\n\n")
				escreva("Digite a base do retangulo: ")
				leia(l1)
				
				escreva("Digite a altura do retangulo: ")
				leia(l2)
			}
			area = l1 * l2
			perimetro = (l1*2) + (l2*2)
			escreva("Area: ", area)
			escreva("\nPerimetro: ", perimetro)
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 780; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */