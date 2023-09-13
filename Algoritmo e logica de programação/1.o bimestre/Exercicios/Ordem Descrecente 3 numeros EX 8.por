programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, n3
		escreva("Escreva 3 numeros diferentes inteiros\n")
		leia(n1, n2, n3) 
		se( n1 > n2 e n1 > n3 e n2 > n3 ){
			escreva(n1," ", n2," ", n3)
		}
		senao{
			se ( n1 > n2 e n1 > n3 e n3 > n2){
				escreva(n1," ", n3," ", n2) 
			}
			senao {
				se ( n2 > n1 e n2 > n3 e n1 > n3){
					escreva(n2," ", n1," ", n3)
				}
				senao {
					se( n2 > n3 e n2 > n1 e n3 > n1) {
						escreva(n2," ", n3," ", n1)
					}
					senao { 
						se( n3 > n1 e n3 > n2 e n1 > n2 ){
							escreva( n3," ", n1," ", n2)
						}
						senao{
							se( n3 > n1 e n3 > n2 e n2> n1){
								escreva(n3," ", n2," ", n1)
							}
							senao{
								escreva("Erro")
							}
						}
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
 * @POSICAO-CURSOR = 104; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */