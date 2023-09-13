programa
{
		//Thales Vinicius Leal Barcelos 24740
	funcao inicio()
	{
		inteiro h, s, m, resto, ss
		//h = horas
		//m = minutos
		//s = segundos
		//ss = segundos compostos
		escreva("Quantos segundos? ")
		leia(ss)

		h = ss/3600
		resto = ss%3600
		m = resto/60
		s = resto%60
		escreva(h, "h:", m, "m:", s, "s")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */