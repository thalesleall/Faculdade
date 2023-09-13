programa
{	
	
	/* 
	Fazer um subprograma que realize uma busca de um valor na matriz e retorne a linha ou -1 caso não encontre. O algoritmo deve ler uma matriz 20x20, e depois ler 
	5 valores, fornecidos pelo usuário, e para cada valor lido, retornar uma mensagem em que linha o elemento está ou que não foi encontrado na matriz.
	*/

	inclua biblioteca Util --> u
	funcao inicio()
	{
		
		inteiro mat[20][20], i, j, k, numeros[5]
		
		/*
		para(i = 0; i < 20; i++){
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

		escreva("Digite os numeros que deseja buscar na matriz: \n")
		para(k = 0; k < 5; k++){
			escreva(k + 1, "° numero: ")
			leia(numeros[k])
		}
		
		buscaValor(mat, numeros)
		
	}

	funcao buscaValor(inteiro &mat[][], inteiro &numeros[]){
		inteiro naoe
		para(inteiro k = 0; k < 5; k++){
			escreva("Valor: ", numeros[k], ", procurando...\n")
			naoe = 0
			para(inteiro i = 0; i < 20; i++){
				para(inteiro j = 0; j < 20; j++){
					se(numeros[k] == mat[i][j]){
						escreva("Numero encontrado na linha: ", i, "\n")
						naoe++
					}
				}
			}
			
			se(naoe == 0){
				escreva("Não encontrado em nenhuma posição, -1 \n\n")
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
 * @POSICAO-CURSOR = 1519; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */