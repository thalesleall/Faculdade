programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio(){
		real delta, x1, x2, a, b, c
		
		escreva("Por favor digite os três coeficientes. \n")
		escreva("a= ")
		leia(a)
		escreva("b= ")
		leia(b)
		escreva("c= ")
		leia(c)
		delta = (mat.potencia(b, 2) -4 * a * c)
		se (delta < 0) {
			
			escreva("Essa não é uma equação de segundo grau valida ou não apresenta solução real.")
		}
		senao{ 
			x1 = ((-b + mat.raiz(delta, 2)) / (2 * a))
			x2 = ((-b - mat.raiz(delta, 2)) / (2 * a))
			escreva("Delta = " , delta, "\n")
			escreva("As raizes dessa equação são: " , x1 , " e " , x2 , "." )
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */