programa
{
	/* Fazer um subprograma que receba um caractere como parâmetro e retorne 1 caso seja uma vogal minúscula, 
	retorne 2 caso seja uma vogal maiúscula, e 0 em caso contrário. */
	
	funcao inicio()
	{
		caracter maiuscula[5], minuscula[5], c

		maiuscula[0] = 'A'
		maiuscula[1] = 'E'
		maiuscula[2] = 'I'
		maiuscula[3] = 'O'
		maiuscula[4] = 'U'

		minuscula[0] = 'a'
		minuscula[1] = 'e'
		minuscula[2] = 'i'
		minuscula[3] = 'o'
		minuscula[4] = 'u'

		escreva("Digite um caracter: ")
		leia(c)

		escreva("Resposta: ", calculaLetras(c, maiuscula, minuscula))
	}

	funcao inteiro calculaLetras(caracter c, caracter maiuscula[], caracter minuscula[]){
		inteiro resp = 0, i
		para(i = 0; i < 5; i++){
			se(c == minuscula[i]){
				retorne 1
			}
			senao se(c == maiuscula[i]){
				retorne 2
			}
			senao{
				retorne 0
				
			}
		}
		retorne 0
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 857; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */