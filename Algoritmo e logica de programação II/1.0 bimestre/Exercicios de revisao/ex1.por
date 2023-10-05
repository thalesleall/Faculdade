programa
{
	
	funcao inicio()
	{
		//Fazer um algoritmo que leia diversos números, sendo que o 0 (zero) sinaliza o fim da leitura. 
		//Mostre:  o maior número, a média dos números positivos, e a quantidade de números divisíveis por 5o
		
		inteiro n, maiorN = 0, mediaPos = 0, acmPos = 0, qtde5 = 0

		escreva("Digite o numero: ")
		leia(n)
		enquanto(n != 0){
			se(n > maiorN){
				maiorN = n
			}
			se(n > 0 ){
				mediaPos = mediaPos + n
				acmPos++
			}
			se(n % 5 == 0){
				qtde5++
			}
			escreva("Digite o numero: ")
			leia(n)
		}
		escreva("O maior numero é: ", maiorN)
		escreva("\nA média dos numeros Positivos é: ", mediaPos/acmPos)
		escreva("\nA quantidade de números divisiveis por 5 é: ", qtde5)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */