programa
{
	
	funcao inicio()
	{
		inteiro n
		escreva("Digite um numero. \n")
		leia(n)
		se (n%2 == 0){
			
			se(n%3 == 0){
				escreva("Esse numero é divisivel por 2 e 3!")
			}
			
			senao{
				escreva("Esse numero é apenas divisivel por 2 e não é divisivel por 3")
				}
		}
		senao {
			escreva("Esse numero não é divisivel por 2 nem e por 3.")
               
	          
	     }
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 355; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */