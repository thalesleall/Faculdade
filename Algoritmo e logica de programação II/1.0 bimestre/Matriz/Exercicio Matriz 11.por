programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro mat[6][6], i, j

		para(i = 0; i<6; i++){
			para(j = 0; j < 6; j++){
				mat[i][j] = u.sorteia(-9, 9)
			}
		}
		para(i = 0; i < 6; i ++){
			para(j = 0; j < 6; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}

		escreva("\nMATRIZ ALTERADA: \n")

		para(i = 0; i < 6; i++){
			para(j = 0; j < 6; j++){
				se(i != j e i != 6-i-j e mat[i][j] < 0){
					mat[i][j] = 0
				}
			}
		}

		para(i = 0; i < 6; i ++){
			para(j = 0; j < 6; j++){
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
 * @POSICAO-CURSOR = 555; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */