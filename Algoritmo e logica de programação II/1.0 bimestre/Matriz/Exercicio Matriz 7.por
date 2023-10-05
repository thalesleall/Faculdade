programa
{
	/* 7. Crie um algoritmo que leia um conjunto de números inteiros para preencher uma matriz 10x10 e a partir daí,
	gere um vetor com os maiores elementos de cada linha e outro com os menos elementos de cada coluna*/

	
	funcao inicio()
	{
		inteiro mat[10][10], i, j, vetLinha[10], vetColuna[10], linha, coluna

		para(i = 0; i < 10; i++){
			para(j = 0; j<10; j++){
				escreva("Digite o valor da coordenada ", "(", i, ", ", j, "): ")
				leia(mat[i][j])
			}
		}

		escreva("Matriz 1: \n")
		para(i = 0; i < 10; i ++){
			para(j = 0; j < 10; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		
		vetLinha[0] = mat[0][0]
		vetColuna[0] = mat[0][0]
		
		
		
		para(i = 0; i < 10; i++){
			linha = 0
			para(j = 0; j < 10; j++){
				se(linha < mat[i][j]){
					linha = mat[i][j]
				}
			}
			vetLinha[i] = linha
		}

		
		para(j = 0; j < 10; j++){
			coluna= 0
			para(i = 0; i < 10; i++){
				se(coluna > mat[i][j]){
					coluna = mat[i][j]
				}
			}
			vetColuna[j] = coluna
		}

		escreva("\nMaiores de cada linha: ")
		para(i = 0; i < 10; i++){
			escreva(vetLinha[i], "  ")
		}
		
		escreva("\nMenores de cada coluna: ")
		para(j = 0; j < 10; j++){
			escreva(vetColuna[j], "  ")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 806; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */