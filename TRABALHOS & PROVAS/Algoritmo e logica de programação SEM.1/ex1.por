programa
{
	inclua biblioteca Matematica --> mat
		funcao inicio()
		{
			//Thales Vinicius Leal Barcelos 24740
		
			real a, b, c, perimetro, area, volume, diagonal
			
			escreva("Informe as medidas do paralelepípedo: \n")
			
			escreva("Digite o valor de 'a': \n")
			leia(a)
			
			escreva("Digite o valor de 'b': \n")
			leia(b)
			
			escreva("Digite o valor de 'c': \n")
			leia(c)
			
			perimetro = (a + b + c)
			area = (2 * (a*b)) + (2 * (b*c)) + (2 * (a*c))
			volume = a * b * c
			diagonal = mat.arredondar(mat.raiz(mat.potencia(a, 2.0) + mat.potencia(b, 2.0) + mat.potencia(c, 2.0), 2.0), 2)
			
			escreva("Perimetro = ", perimetro, "\n")
			escreva("Area Total = ", area, "\n")
			escreva("Volume = ", volume, "\n")
			escreva("Diagonal = ", diagonal, "... \n")
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */