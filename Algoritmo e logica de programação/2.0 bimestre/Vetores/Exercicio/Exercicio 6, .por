programa
{
	
	funcao inicio()
	{
		inteiro vet1[30], vet2[30], i

		escreva("Entre com os valores do vetor: ")
		para (i = 0; i<5; i++){
			leia(vet1[i])
		}
		escreva("Vetor resultante: \n")
		para (i=0; i<5; i++){
			se(i % 2 == 0){
				vet2[i] = vet1[i] * 2
			}
			senao {
				vet2[i] = vet1[i] * 3
			}
			escreva(vet2[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 69; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */