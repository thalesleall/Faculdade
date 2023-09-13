programa
{
	
	funcao inicio()
	{
		real h, p
		cadeia sexo

		escreva("Calculadora de peso Ideal. \n")
		escreva("Por favor digite sua altura: ")
		leia(h)
		escreva("Digite seu sexo: ")
		leia(sexo)
		se (sexo == "Masculino" ou sexo == "masculino")
		{
			p = ((72.7*h)-58)
			escreva("Seu peso ideial é: ", p)
		}
		senao 
		{
			se (sexo == "Feminino" ou sexo == "feminino")
			{
			p = ((61.1*h)-44.7)
			escreva("Seu peso ideal é ", p)
			}
			senao 
			{
				escreva("Sexo invalido.")
			}
		}

		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 167; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */