programa
{
	inclua biblioteca Util --> u
	/*
		Fazer dois subprogramas: um que  encontre o maior valor de um vetor e outro que encontre o segundo maior valor de um vetor.
		Lembre-se que um subprograma pode chamar um outro subprograma.
	*/
	funcao inicio(){

		inteiro vet[50], i, mValor, mValor2

		para(i = 0; i < 50;i++){
			vet[i] = u.sorteia(0, 1000)
			escreva(vet[i], "\n")
		}
		
		
		mValor = maiorValor(vet)
		mValor2 = maiorValor2(vet, mValor)

		escreva("\nMaior valor: ", mValor)
		escreva("\nSegundo maior valor: ", mValor2)
	}
	funcao inteiro maiorValor(inteiro vet[]){
		inteiro mValor = 0
			para(inteiro i = 0; i < 50; i++){
				se(vet[i] > mValor){
					mValor = vet[i]
				}	
			}
		retorne mValor
	}
	funcao inteiro maiorValor2(inteiro vet[], inteiro mValor){
		inteiro mValor2 = 0

			para(inteiro i = 0; i < 50; i++){
				se(vet[i] > mValor2 e vet[i] != mValor){
					mValor2 = vet[i]
				}
			}
			
		retorne mValor2
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 523; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */