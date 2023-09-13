programa
{
	
	funcao inicio()
	{
		real n1, n2
		cadeia op

		escreva("Escreva dois numeros: ")
		leia(n1, n2) 
		escreva("Qual operação aritmetica usar?")
		leia(op)
		se (op == "+")
		{
		   escreva(n1 + n2)
		}
		senao
		{
			se (op == "-")
			{
				escreva(n1 - n2)
			}
			senao
			{
				se (op == "*")
				{
					escreva(n1 * n2)
				}
				senao 
				{
					se (op == "/")
					{
						escreva(n1 / n2)
					}
					senao
					{
						escreva("Operador invalido.")
					}
				}
				
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 502; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */