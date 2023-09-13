programa
{
	
	funcao inicio()
	{
		inteiro a, b, c

		escreva("Digite as medidas de um Triangulo: ")
		leia(a, b, c)
		se (a < c+b e b < a+c e c < b+a)
		{
			se ( a == b e c == b)
			{
				escreva("Esse triangulo é equilatero.")
			}
			senao
			{
				se ( a == b ou b == c ou a == c)
				{
					escreva("Esse triangulo é Isosceles2.")
				}
				senao
				{
					escreva("Esse triangulo é Escaleno.")
				}
			}
		}
		senao 
		{
			escreva("Isso não é um triangulo.")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */