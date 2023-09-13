programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro vet[20], i, maior, menor

		para(i = 0; i<20; i++){
			escreva("Escreva o ", i+1, "° numero:")
			leia(vet[i])
		}
		maior = vet[0]
		para(i = 0; i < 20; i++){
			se(vet[i] > maior){
				maior = vet[i]
			}
		}
		escreva("O maior elemento é ", maior, "\n")

		menor = vet[0]
		para(i=1; i<20;i++){
			se (vet[i] < menor){
				menor = vet[i]
			}
		}
		escreva("O menor elemento é ", menor, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 7, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */