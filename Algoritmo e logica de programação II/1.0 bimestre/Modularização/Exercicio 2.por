programa
{
	//Fazer um subprograma que identifique se um numero é ou não primo	
	funcao inicio()
	{
		inteiro numero
		escreva("Escreva um número para verificar se ele é primo: ")
		leia(numero)

		se(ePrimo(numero) == 0){
			escreva("\nEsse numero não é primo")
		}
		senao se(ePrimo(numero) == 1){
			escreva("\nEsse numero é primo")
		}
	}

	funcao inteiro ePrimo(inteiro numero){
		
		se(numero <= 1){
			retorne 0
		}
		para(inteiro i = 2; i < numero; i++){
			se(numero % i == 0){
				retorne 0
			}
		}

		retorne 1
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */