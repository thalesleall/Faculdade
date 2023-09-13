programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		//cronometro
		inteiro cont, segundos, minutos
		segundos = 60
		minutos = 9
		escreva("10:00 \n")
		para(cont = 600; cont >= 0; cont--){
			se(segundos <= 60 e segundos != 0){
				segundos--
			}
			senao{
				se(minutos <= 10){
					segundos = segundos + 59
					minutos--
				}
			}
			Util.aguarde(1000)
			escreva(minutos, ":", segundos, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 238; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */