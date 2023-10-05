programa
{
	
	funcao inicio()
	{
		inteiro a, b
		a = 7
		b = 15
		escreva(a, "   ", b, "\n")
		troca(a, b)
		escreva(a, "   ", b, "\n")
	}
	//o & comercial significa que está passando por referencia
	funcao  troca(inteiro &x, inteiro &y){
		inteiro aux
		aux = x
		x = y
		y = aux 
		
	}
}

programa 2{

	funcao inicio(){
		inteiro a, b, s
		a = 4
		b = 9
		s = soma(a, b)
		escreva("Soma = ", s, "\n")

		a = 6
		b = 12

		escreva("Soma = ", soma(a, b), "\n")
	}
	
	funcao inteiro soma(inteiro x, inteiro y){
		inteiro result
		result = x + y
		retorne result
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 473; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */