programa
{	
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp

	funcao inicio()
	{
		cadeia cpf
		caracter texto
		inteiro num[11], i, sumDigitoUm, digitoV1, sumDigitoDois, digitoV2

		escreva("Escreva seu cpf: ")
		leia(cpf)
		sumDigitoUm = 0
		sumDigitoDois = 0

		para(i = 0; i<11; i++){
			texto = tx.obter_caracter(cpf, i)
			num[i] = tp.caracter_para_inteiro(texto)
		}
		
			para(i = 0; i<11; i++){
				escreva(num[i], "\n")
			}
			
		//digito 1
		
		para(i = 0; i < 9; i++){
				sumDigitoUm = sumDigitoUm + (num[i] * (10-i))
		}
			se(sumDigitoUm % 11 == 0 ou sumDigitoUm % 11 == 1){
				digitoV1 = 0
			}
			senao{
				digitoV1 = 11 - (sumDigitoUm % 11)
			}
		
		//verificação e digito 2
		digitoV2 = 0
		se(digitoV1 == num[9]){
			 
			escreva("\nentrou\n")
				para(i = 0; i < 10; i++){
				sumDigitoDois = sumDigitoDois + (num[i] * (11-i))
				}
					se(sumDigitoDois % 11 == 0 ou sumDigitoDois % 11 == 1){
						digitoV2 = 0
						}
							senao{
								digitoV2 = 11 - (sumDigitoDois % 11)
								}
 
		}
		
		
		se(digitoV2 == num[10]){
			escreva("CPF VALIDO")
		}
		
		senao{
			escreva("CPF INVALIDO")
		}


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 936; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */