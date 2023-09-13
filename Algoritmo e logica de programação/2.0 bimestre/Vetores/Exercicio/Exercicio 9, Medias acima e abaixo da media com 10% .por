programa
{
	
	funcao inicio()
	{
		real notas[50], soma, media
		inteiro i, acima, abaixo

		soma = 0
		acima = 0
		abaixo = 0

		para(i=0; i < 5; i++){
			escreva("Digite o ",  i+1, "° elemento: ")
			leia(notas[i])
			soma = soma + notas[i]
		}

		media = soma/5

		para(i = 0; i<5; i++){
			se (notas[i] > (media*1.1)){
				acima = acima + 1
			}
			senao {
				se (notas[i] < (media*0.9)){
					abaixo = abaixo + 1
				}
			}
		}
		escreva("Media: ", media)
		escreva("\n", acima, " notas são 10% acima da media")
		escreva("\n", abaixo, " noteas são 10% abaixo da media")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 576; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */