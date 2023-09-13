programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	//LEITURA EM CARACTER PARA VETOR INTEIRO
	//LEIA CARACTER "1 2 3"
	//BIBLIOTECA Texto --> tx
	//BIBLIOTECA Tipos --> tp
	//VETOR = |1|2|3|
	funcao inicio()
	{
		cadeia cpf
		caracter texto
		inteiro num[11], i 

		escreva("Escreva seu cpf: ")
		leia(cpf)

		para(i = 0; i<11; i++){
			texto = tx.obter_caracter(cpf, i)
			num[i] = tp.caracter_para_inteiro(texto)
		}
		para(i = 0; i<11; i++){
			escreva(num[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */