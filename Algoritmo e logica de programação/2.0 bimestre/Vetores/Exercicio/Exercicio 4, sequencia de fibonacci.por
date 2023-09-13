programa
{
	
	funcao inicio()
	{
		inteiro fib[30], i

		fib[0] = 1
		fib[1] = 1

		para(i=2; i<30; i++){
			fib[i] = fib[i-i] + fib[i-2]
		}
		para(i=0; i<30; i++){
			escreva(fib[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 195; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */