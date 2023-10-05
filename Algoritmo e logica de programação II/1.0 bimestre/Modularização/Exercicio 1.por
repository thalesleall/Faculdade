programa
{
	// Fazer um subprograma que indentifique se um número é ou não divisivel por 6
	funcao inicio()
	{
		inteiro numero
		cadeia resposta
		escreva("Digite um numero: ")
		leia(numero)
		resposta = divsivel6(numero)
		escreva("Esse numero ", resposta, " divisivel por 6")
	}

	funcao cadeia divsivel6(inteiro numero){
		cadeia resp

		se(numero % 6 == 0){
			resp = "é"
		}
		senao{
			resp = "não é "
		}
		retorne resp
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 314; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */