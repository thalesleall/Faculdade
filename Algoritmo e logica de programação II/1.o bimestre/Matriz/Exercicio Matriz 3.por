programa
{
	//Fazer um algoritmo que leia uma matriz 5x5 e escreva a sua diagonal principal

	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro mat[5][5], i, j

		escreva("Matriz: ")

		para(i = 0; i < 5; i++){
			para(j = 0; j < 5; j++){
				mat[i][j] = u.sorteia(1, 9)
			}
		}

		escreva("Matriz: \n")
		para(i = 0; i < 5; i ++){
			para(j = 0; j < 5; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		
		escreva("\nColuna principal: \n")
		j = 0
		
		para(i = 0 ; i < 5 e j < 5; i++){
			escreva(mat[i][j], "  ")
			j++
		}

		//OU

		escreva("\nColuna principal metodo MELHOR: \n")

		para(i=0; i < 5; i++){
			escreva(mat[i][i], "    ")
		}
		
		//ALCONTRARIO (0,4), (1,3), (2,2), (3,1), (3,3)

		escreva("\nColuna principal alcontrario: \n")
		para(j=0; j < 5; j++){
			escreva(mat[j][4-j], "    ")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 170; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */