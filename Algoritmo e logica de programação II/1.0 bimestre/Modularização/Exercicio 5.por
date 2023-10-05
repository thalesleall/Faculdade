programa
{
	// FUNCAO PARA A SOMA DE UM VETOR
	
	funcao inicio()
	{
		real vet[10], soma, media
		inteiro i

		para(i = 0; i < 10; i++){
			escreva("Escreva a ", i + 1, " nota: ")
			leia(vet[i])
		}

		soma = somaVet(vet, 10)
		escreva("Soma do vetor: ", soma)

		media = calcMedia(vet, 10)
		escreva("\nMedia da turma: ", media)
	}
	
	funcao real somaVet(real vet[], inteiro tam){
		real soma = 0.0
		inteiro i
		para(i = 0; i < 5; i++){
			soma += vet[i]
		}
		retorne soma
	}

	funcao real calcMedia(real vet[], inteiro tam){
		real media = 0.0
		inteiro i
		para(i = 0; i < tam; i++){
			media += vet[i] 
		}

		retorne media/tam
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 310; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */