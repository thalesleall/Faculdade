programa
{
	/*
		Fazer um algoritmo que leia uma matriz 6x6 e possua um subprograma que atribua o valor 0 para 
		todos os valores negativos da matriz e retorne a quantidade de valores alterados.
	*/

	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[6][6], i, j, alterados

		/*
		para(i = 0; i < 6; i++){
			para(j = 0; j < 6; j++){
				escreva("Digite o valor representante a posição (", i, ", ", j, "): ")
				leia(mat[i][j])
			}
		}
		*/
		

		//------------------------------------//
		para(i = 0; i < 6; i++){
			para(j = 0; j < 6; j++){
				mat[i][j] = u.sorteia(-9, 9)
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		//-----------------------------------//

		escreva("\n\n Matriz alterada: \n")
		
		alterados = negativos0(mat)

		para(i = 0; i < 6; i ++){
			para(j = 0; j < 6; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		
		escreva("\n\nQuantidade de valores alterados: ", alterados)
	}

	funcao inteiro negativos0(inteiro &mat[][]){
		inteiro alterados = 0
		para(inteiro i = 0; i < 6; i++){
			para(inteiro j = 0; j < 6; j++){
				se(mat[i][j] < 0){
					mat[i][j] = 0
					alterados++
				}
			}
		}
		retorne alterados
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1182; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */