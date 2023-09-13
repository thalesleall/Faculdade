programa
{
	
	funcao inicio()
	{
		
		inteiro vet1[20], vetPar[20], vetImpar[20], i, par, impar

		escreva("Entrada de dados\n")
		para (i = 0; i < 20; i++){
			escreva("Digite o ", i + 1, "° elemento: ")
			leia(vet1[i])
		}

		par = 0
		impar = 0

		escreva("Processamento de dados \n")
		para (i = 0; i < 20; i++){
			se (vet1[i] % 2 == 0){
				vetPar[par] = vet1[i]
				par = par + 1
			}
			senao{
				vetImpar[impar] = vet1[i]
				impar = impar + 1
			}
		}

		escreva("\n Saída de dados - Vetores Pares\n")
		para(i = 0; i<par; i++){
			escreva(vetPar[i], "   ")
		}
		escreva("\n Saída de dados - Vetores Impares\n")
		para(i = 0; i<impar; i++){
			escreva(vetImpar[i], "   ")
		}
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 643; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */