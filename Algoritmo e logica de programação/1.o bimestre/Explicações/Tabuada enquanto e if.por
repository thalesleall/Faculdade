programa
{
	
	funcao inicio()
	{
		real numero, resultado, ate
		inteiro cont

		cont = 0
		escreva("Digite o numero que deseja a tabuada: ")
		leia(numero)
		enquanto (cont <= 10){
			se((numero >= 2) e (numero <=9)){
			escreva(numero," x ", cont, " = ", numero * cont, "\n")
			cont = cont + 1
			}
			senao{
				escreva("Numero invalido")
				cont = cont + 11
			}
		}///// NAO RECOMENDADO COLOCAR O IF FORA DO ENQUANTO ( PRA QUE FAZER O ENQUANTO SE NAO SERA NECESSARIO, TESTAR ANTES SE ENTRA NO WHILE
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 511; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */