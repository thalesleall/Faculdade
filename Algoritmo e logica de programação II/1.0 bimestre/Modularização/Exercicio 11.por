programa
{
	
	funcao inicio()
	{
		inteiro n = 0

		escreva("Digite N: ")
		leia(n)

		enquanto(n <= 1){
			escreva("N é invalido, digite novamente: ")
			leia(n)
		}
		escreva("Resposta: ", calculaExpressao(n))
	}

	funcao inteiro calculaExpressao(inteiro n){
		inteiro i = 0, resp = 0, j = 3
		para(i = 2; i < n; i++){
			resp = resp + (i/j)
			j += 2
		}
		retorne resp
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 216; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */