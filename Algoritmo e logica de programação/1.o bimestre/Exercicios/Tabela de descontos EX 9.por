programa
{
	
	funcao inicio()
	{
		real p, mp, pp
		escreva("Digite o valor do produto: ")
		leia(p)
		escreva("--------------------Formas de pagamento:-------------------- \n")
		escreva("A vista em dinheiro ou no Cheque = 10% de desconto; digite 1\n")
		escreva("A vista no cartão de credito = 5% de desconto; digite 2\n")
		escreva("Parcelamento em 2x = preço normal sem desconto; digite 3\n")
		escreva("Parcelamento em 3x = 10% de juros; digite 4\n")
		escreva("--------------------Selecione uma opção:-------------------- \n")
		leia(mp)
		se(mp == 1){
			pp = (p * 0.10)
			mp = (p - pp)
			escreva("Valor da compra = ", mp)
		}
		senao{
			se(mp == 2){
				pp = (p * 0.05)
				mp = p - pp
				escreva("Valor da compra = ", mp)
			}
			senao{
				se(mp == 3){
					mp = p
					escreva("Valor da compra = ", mp, " Em 2x sem juros. ")
				}
				senao{
					se(mp == 4){
						pp = (p * 0.10)
						mp = (pp + p)
						escreva("Valor da compra = ", mp, " Em 3x com juros de 10%")
					}
					senao{
						escreva("Digite uma opção valida.")
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
 * @POSICAO-CURSOR = 599; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */