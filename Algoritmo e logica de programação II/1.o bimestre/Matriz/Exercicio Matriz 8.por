programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[5][5], i, j, aux

		para(i = 0; i < 5; i++){
			para(j = 0; j < 5; j++){
				mat[i][j] = u.sorteia(0, 9)
			}
		}
		escreva("Matriz 1: \n")
		para(i = 0; i < 5; i ++){
			para(j = 0; j < 5; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}

		para(j = 0; j < 5; j++){
			aux = mat[4][j]
			mat[4][j] = mat[1][j]
			mat[1][j] = aux
		}

			
		escreva("\nMatriz a: \n")
		para(i = 0; i < 5; i ++){
			para(j = 0; j < 5; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		para(i = 0; i < 5; i++){
			aux = mat[i][3]
			mat[i][3] = mat[i][0]
			mat[i][0] = aux
		}
		escreva("\nMatriz b: \n")
		para(i = 0; i < 5; i ++){
			para(j = 0; j < 5; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		
		para(i = 0; i < 5; i++){
			aux = mat[i][i]
			mat[i][i] = mat[i][5-i-1]
			mat[i][5-i-1] = aux
		}
		escreva("\nMatriz c: \n")
		para(i = 0; i < 5; i ++){
			para(j = 0; j < 5; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}

		escreva("\n\nMatriz RESULTANTE: \n")
		para(i = 0; i < 5; i ++){
			para(j = 0; j < 5; j++){
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
 * @POSICAO-CURSOR = 1080; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */