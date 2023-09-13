programa
{
	//Fazer um algoritmo que leia os lados de um retângulo, calcule e imprima a área e o perímetro de cada um. 
	//Parar a leitura de dados quando for digitado um valor inválido. 
	//Não usar vetor. Ao final, escrever a quantidade de retângulos.
	funcao inicio()
	{
		real l1 = 0.0, l2 = 0.0, cont = 0.0
			
			
		escreva("Escreva a base do retangulo: ")
		leia(l1)
		escreva("Escreva a altura do retangulo: ")
		leia(l2)
			enquanto(l1 > 0 e l2 > 0){
				escreva("Area: ", l1 * l2, "\n")
				escreva("Perimetro: ", l1 + l1 + l2 + l2, "\n")
				escreva("Escreva a base do retangulo: ")
				leia(l1)
				escreva("Escreva a altura do retangulo: ")
				leia(l2)
				cont++
			}
		escreva("Quantidade de retangulos: ", cont)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 682; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */