programa
{
	
	funcao inicio()
	{
		inteiro vet1[30], vet2[30], i

		para(i = 0; i < 30; i++){
			escreva("Escreva o elemento: ", i+1, "\n")
			leia(vet1[i])
		}
		para(i = 0; i < 30; i++){
			 vet2[i] = vet1[29  - i]
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 209; 
 * @PONTOS-DE-PARADA = 6;
 * @SIMBOLOS-INSPECIONADOS = {vet1, 6, 10, 4}-{vet2, 6, 20, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */