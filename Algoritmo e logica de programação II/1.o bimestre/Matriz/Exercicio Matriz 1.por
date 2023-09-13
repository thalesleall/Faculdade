programa
{
	
	funcao inicio()
	{
		//Fazer um algoritmo que some os elementos de uma matriz 3x3

		inteiro mat[3][3], i, j, acm = 0

		para(i = 0; i < 3; i ++){
			para(j = 0; j < 3; j++){
				escreva("Digite o elemento da linha ", i, " e a coluna ", j, " = ")
				leia(mat[i][j])
				acm = acm + mat[i][j]
			}
		}
		escreva("Matriz: \n")
		para(i = 0; i < 3; i ++){
			escreva("|")
			para(j = 0; j < 3; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("|\n")
		}
		escreva("\nA soma dos valores da matriz é igual a: ", acm)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 444; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 8, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */