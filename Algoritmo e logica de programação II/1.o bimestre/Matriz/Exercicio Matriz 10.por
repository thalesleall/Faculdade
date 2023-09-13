programa
{
	
	/* Fazer um algoritmo que leia uma matriz 20x20. 
	 *  Além disso, ler 5 valores, e para cada valor lido, fazer uma busca do valor na matriz e, 
	 *  escrever a localização (linha e coluna) ou uma mensagem de “não encontrado”  */
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[20][20], i, j, k, numeros[5], naoe
	

		/* para(i = 0; i < 20; i++){
			para(j = 0; j < 20; j++){
				escreva("Digite o valor representante a posição (", i, ", ", j, "): ")
				leia(mat[i][j])
			}
		}
		*/ 

		//------------------------------------//
		para(i = 0; i < 20; i++){
			para(j = 0; j < 20; j++){
				mat[i][j] = u.sorteia(0, 100)
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		//-----------------------------------//
	
		para(k = 0; k < 5; k++){
			escreva("Digite o ", k + 1, "° para buscar na matriz: ")
			leia(numeros[k])
		}

		escreva("\n")
		
		para(k = 0; k < 5; k++){
			escreva("Valor: ", numeros[k], ", procurando...\n")
			naoe = 0
			para(i = 0; i < 20; i++){
				para(j = 0; j < 20; j++){
					se(numeros[k] == mat[i][j]){
						escreva("Numero encontrado na posição: (", i, ", ", j, ")\n")
						naoe++
					}
				}
			}
			
			se(naoe == 0){
				escreva("Não encontrado em nenhuma posição.\n\n")
			}
			senao{
			escreva("\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */