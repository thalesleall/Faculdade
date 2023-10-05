programa
{
	//1 - Fazer um algoritmo que leia uma matriz 5x5 e escreva a sua diagonal principal.
	//2 - Fazer um algoritmo que leia uma matriz 5x5 e escreva a sua diagonal secundária.
	//3 - Crie um algoritmo que preencha uma matriz 3x4 de inteiros e escreva: 
	//	a) a soma dos números ímpares fornecidos;
	//	b) a soma de cada uma das colunas;
	//	c) a soma de cada uma das linhas.

	inclua biblioteca Util --> u
	
	funcao inicio()
	{	
		const inteiro TAM = 5
		inteiro mat[TAM][TAM], mat2[3][4], i, j, sumimpar = 0

		

		//EX 1
		/*
		para(i = 0; i < TAM; i++){
			para(j = 0; j < 5; j++){
				escreva("Digite o valor da coordenada ", "(", i, ", ", j, "): ")
				leia(mat[i][j]) 
			}
		}
		escreva("Matriz: \n")
		para(i = 0; i < TAM; i ++){
			para(j = 0; j < TAM; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		escreva("\n1 - Coluna principal: ")

		para(i=0; i < TAM; i++){
			escreva(mat[i][i], "    ")
		}

		escreva("\n")
		//--------------------------------------------------------------------------------------------------------//

		
		//EX 2		
		para(i = 0; i < TAM; i++){
			para(j = 0; j < 5; j++){
				escreva("Digite o valor da coordenada ", "(", i, ", ", j, "): ")
				leia(mat[i][j]) 
			}
		}
		escreva("Matriz: \n")
		para(i = 0; i < TAM; i ++){
			para(j = 0; j < TAM; j++){
				escreva(mat[i][j], "  ")
			}
			escreva("\n")
		}
		escreva("\n2 - Coluna segundaria: ")

		para(j=0; j < TAM; j++){
			escreva(mat[j][TAM-j-1], "    ")
		}
		escreva("\n")
		*/
		//--------------------------------------------------------------------------------------------------------//


		//EX 3
		
		para(i = 0; i < 3; i++){
			para(j = 0; j < 4; j++){
				mat2[i][j] = u.sorteia(0, 9)
				se(mat2[i][j] % 2 == 0){
					sumimpar = sumimpar + mat2[i][j]
				}
			}
		}
		escreva("\nMatriz: \n")
		para(i = 0; i < 3; i ++){
			para(j = 0; j < 4; j++){
				escreva(mat2[i][j], "  ")
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
 * @POSICAO-CURSOR = 1782; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */