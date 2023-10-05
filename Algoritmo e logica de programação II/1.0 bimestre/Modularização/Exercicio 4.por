programa
{
	//Fazer um subprograma que calcule o fatorial de um número 	
	funcao inicio()
	{
		inteiro numero, resposta

		escreva("Digite um numero: ")
		leia(numero)
		resposta = calculaFatorial(numero)
		escreva("Resposta: ", resposta)
		
	}
	funcao inteiro calculaFatorial(inteiro numero){
		inteiro fatorial = 0

		para(inteiro i = 2; i <= numero; i++){
			fatorial *= i
		}
		retorne fatorial
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 401; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */