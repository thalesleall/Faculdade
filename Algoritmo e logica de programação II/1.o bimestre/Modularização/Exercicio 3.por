programa
{
	//Fazer um subprograma que calcule o quociente inteiro da divisão entre dois números, sem utilizar o operador div	
	funcao inicio()
	{
		inteiro divisor, dividendo, resposta
		
		escreva("Digite o divisor: ")
		leia(divisor)
		
		escreva("Digite o dividendo: ")
		leia(dividendo)
		
		resposta = calculaDivisao(divisor, dividendo)

		escreva("Resposta: ", resposta)
	}
	funcao inteiro calculaDivisao(inteiro divisor, inteiro dividendo){
		
		inteiro quociente = 0
		
		enquanto (dividendo >= divisor){
			dividendo -= divisor
			quociente++
		}
		
		retorne quociente
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 582; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */