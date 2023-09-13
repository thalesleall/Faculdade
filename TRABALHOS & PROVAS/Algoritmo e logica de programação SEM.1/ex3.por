programa
{
		//Thales Vinicius Leal Barcelos 24740
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real trabalho, avaliacao, exame, somapeso, media
		escreva("Por favor digite a nota do Trabalho: ")
		leia(trabalho)
		escreva("Por favor digite a nota da Avaliacao: ")
		leia(avaliacao)
		escreva("Por favor digite a nota do Exame: ")
		leia(exame)
		
		somapeso = 3.0 + 4.0 + 3.0
		media = ((trabalho * 3) + (avaliacao * 4) + (exame * 3))/somapeso
		
		se (media > 8 e media < 10){
			escreva("Sua media foi ", mat.arredondar(media, 2), " conceito: A")
		}
		senao{
			se(media > 7 e media < 7.99){
				escreva("Sua media foi ", mat.arredondar(media, 2), " conceito: B")
			}
			senao{
				se(media > 6 e media < 6.99){
					escreva("Sua media foi ", mat.arredondar(media, 2), " conceito: C")
				}
				senao{
					se(media >  5 e media < 5.99){
						escreva("Sua media foi ", mat.arredondar(media, 2), " conceito: D")
					}
					senao{
						se(media > 0 e media < 4.99){
							escreva("Sua media foi ", mat.arredondar(media, 2), " conceito: C")
						}
						senao{
							escreva("Notas invalidas, por favor digite valores até 10")
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
 * @POSICAO-CURSOR = 52; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */