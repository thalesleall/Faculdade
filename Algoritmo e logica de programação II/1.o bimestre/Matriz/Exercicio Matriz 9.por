programa
{
	//Fazer um algoritmo que leia uma matriz 5x7 e gere um vetor com os números pares. Imprimir o vetor e a quantidade de elementos
	
	funcao inicio()
	{
		inteiro mat[5][7], i, j, vet[5][7], pares = 0, k

		para(i = 0; i < 5; i++){
			para(j = 0; j < 7; j++){
				escreva("Digite o valor da coordenada ", "(", i, ", ", j, "): ")
				leia(mat[i][j]) 
			}
		}


		escreva("Matriz: \n")
		para(i = 0; i < 5; i ++){
			para(j = 0; j < 7; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		
		escreva("\n")
		para(k = 0; k < 35; k ++){
			
		}
		para(i = 0; i < 5; i++){
			para(j = 0; j < 5; j++){
				se(mat[i][j] % 2 == 0 e mat[i][j] != 0){
					vet[i][j] = mat[i][j]
					pares++
				}
			}
		}

		para(i = 0; i < 5; i ++){
			para(j = 0; j < 7; j++){
				se(vet[i][j] != 0){
					escreva(vet[i][j], "  ")
				}
				senao{}
			}
			
		}
		escreva("\nQuantidade de pares: ", pares)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 692; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 7, 27, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */