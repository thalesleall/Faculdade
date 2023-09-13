programa
{
	
	funcao inicio()
	{
		real h, B, b, a
		escreva("Calculadora da área de um trapezio\n")
		escreva("Digite a altura: ")
		leia(h)
		escreva("Digite uma base: ")
		leia(B)
		escreva("Digite a outra base: ")
		leia(b)
		se(B > b){
			escreva("A base maior é ", B," e a base menor é ", b, "\n")
			a = (h*(B + b))/2
			escreva("A área do trapezio é: ", a)
		}
		senao {
			se(b > B){
			escreva("A base maior é ", b," e a base menor é ", B, "\n")
			a = (h*(B + b))/2
			escreva("A área do trapezio é: ", a)
			} 
			senao{
				se(b == B){
					escreva("As duas bases são iguais, isso não é um Trapézio")
				}
				senao{
					se(b == 0 ou B == 0 ou h == 0){
						escreva("Sintaxe impossivel, isso não é um Trapézio")
					}
					
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 329; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */