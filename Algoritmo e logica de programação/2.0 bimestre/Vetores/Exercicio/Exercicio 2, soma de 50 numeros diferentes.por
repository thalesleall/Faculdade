programa
{
	
	funcao inicio()
	{
		real vet1[50], vet2[50]
		inteiro i
		
		para(i=0; i<50; i++){
			escreva("Numeros da primeira posição: ")
			leia(vet1[i])
			escreva("Numeros da segunda posição: ")
			leia(vet2[i])
		}
		para(i=0; i<50; i++){
			escreva(vet1[i], " + ", vet2[i], " = ", vet1[i] + vet2[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 132; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */