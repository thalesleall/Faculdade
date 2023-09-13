programa
{
	
	funcao inicio()
	{	
		inteiro N, numeroTriangulos, numero, i, j

		numero = 0
		numeroTriangulos = -1
		faca{
			escreva("Digite N: ")
			leia(N)
			para(i = 1; i <= N; i++){
				para(j = 1; j <= i; j++){
					numero++
					escreva(" ", numero)
				}
				escreva("\n")
			}
			numeroTriangulos++
		}enquanto(N != -1)
		escreva("Numero de triangulos solicitados: ", numeroTriangulos)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */