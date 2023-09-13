programa
{
		//Thales Vinicius Leal Barcelos 24740
	funcao inicio()
	{
		caracter sabor
		real bolas, precobola, precofinal, desconto
		escreva("Por favor digite o sabor desejado \n")
		escreva("Digite 'C' para Chocolate e 'U' para Uva \n")
		leia(sabor)
		escreva("Agora digite quantas bolas deseja: ")
		leia(bolas)
		escreva("Digite o preço por bola: ")
		leia(precobola)

		precofinal = precobola * bolas

		escolha(sabor){
			caso 'C':
			se(bolas > 3){
			 desconto = precofinal * (20/100)
			 precofinal = precofinal - desconto
			 escreva("Desconto de 20% aplicado! \n")
			 escreva("O preço ficou em: ", precofinal)
		}
			senao{
			escreva("Sem desconto!")
			escreva("O preço ficou em: ", precofinal)
			}
			pare
			
			caso 'U':
			se(bolas > 2 e bolas < 6){
			 desconto = precofinal * (15/100)
			 precofinal = precofinal - desconto
			 escreva("Desconto de 15% aplicado! \n")
			 escreva("O preço ficou em: ", precofinal)
			}
			senao{
				se(bolas > 5){
					desconto = precofinal * (30/100)
					precofinal = precofinal - desconto
					escreva("Desconto de 30% aplicado! \n")
					escreva("O preço ficou em: ", precofinal)
				}
				senao{
					escreva("O preço ficou em: ", precofinal)
				}
			
			}
			pare
			caso contrario:
			escreva("Digite um sabor valido!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 53; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */