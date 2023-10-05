programa
{
	
	funcao inicio()
	{
		//Construa um algortimo que efetue a leitura, a soma e a impressão do resultado entre duas matrizes 3x3
		//Vamos dividir o problema em partes: 
		//	Ler uma matriz 3x3.
		//	Ler uma segunda matriz 3x3.
		//	Somar os elementos das duas matrizes e armazenar.
		// 	Mostrar o resultado.

		inteiro mat1[3][3], mat2[3][3], matSum[3][3], i, j

		para(i = 0; i < 3; i++){
			para(j = 0; j < 3; j++){
				escreva("Digite os elementos da primeira matriz: ")
				leia(mat1[i][j])
			}
		}
		para(i = 0; i < 3; i++){
			para(j = 0; j < 3; j++){
				escreva("Digite os elementos da segunda matriz: ")
				leia(mat2[i][j])
			}
		}
		para(i = 0; i < 3; i++){
			para(j = 0; j < 3; j++){
				matSum[i][j] = mat1[i][j] + mat2[i][j]
			}
		}
		escreva("Matriz 1: \n")
		para(i = 0; i < 3; i ++){
			escreva("|")
			para(j = 0; j < 3; j++){
				escreva(mat1[i][j], "  ")
			}
			escreva("|\n")
		}
		escreva("Matriz 2: \n")
		para(i = 0; i < 3; i ++){
			escreva("|")
			para(j = 0; j < 3; j++){
				escreva(mat2[i][j], "  ")
			}
			escreva("|\n")
		}
		escreva("Matriz da Soma: \n")
		para(i = 0; i < 3; i ++){
			escreva("|")
			para(j = 0; j < 3; j++){
				escreva(matSum[i][j], "  ")
			}
			escreva("|\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 651; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */