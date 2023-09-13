programa
{
	/* 6. Fazer um algoritmo que leia uma matriz 5x5 de inteiros e troque a segunda e a quarta linha de cada matriz */
	funcao inicio()
	{
		inteiro mat[5][5], i, j, aux
		const inteiro TAM = 5

		para(i = 0; i < TAM; i++){
			para(j = 0; j < TAM; j++){
				escreva("Digite o valor da coordenada ", "(", i, ", ", j, "): ")
				leia(mat[i][j]) 
			}
		}
		escreva("Matriz 1: \n")
		para(i = 0; i < TAM; i ++){
			para(j = 0; j < TAM; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}

		para(j=0; j< TAM;j++){
			aux = mat[1][j]
			mat[1][j] = mat[3][j]
			mat[3][j] = aux
		}

		escreva("Matriz com a segunda e quarta linha trocada: \n")
		para(i = 0; i < TAM; i ++){
			para(j = 0; j < TAM; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 655; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */