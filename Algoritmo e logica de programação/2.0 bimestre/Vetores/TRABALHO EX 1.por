programa
{
	//1. Fazer um algoritmo que leia idade e nome de 150 pessoas e calcule:
	// a. maior idade digitada; OK
	// b. média das idades maiores que 50 anos; OK
	// c. nome da pessoa mais nova;
	// d. soma das idades de todas as pessoas entre 15 e 30 anos; OK
	// e. nome e quantidade de pessoas com idade abaixo da média.(media de pessoas +50 ou geral?)
	
	funcao inicio()
	{	
		const inteiro rep = 150
		inteiro idade[rep], i, maiorIdade, menorIdade, maiores50[rep], soma15e30, media50, div50, media50Final, media, acm, mediaFinal, abaixoMedia
		cadeia nome[rep], menorNome

		maiorIdade = idade[0]
		soma15e30 = 0
		media50 = 0
		div50 = 0
		media = 0
		acm = 0
		abaixoMedia = 0
		
		para(i = 0; i < rep; i++){
			
			escreva("Digite o nome da: ", (i + 1), "° pessoa: ")
			leia(nome[i])
			escreva("Digite a idade da: ", (i + 1), "° pessoa: ")
			leia(idade[i])
				
				se(idade[i] > maiorIdade){
					maiorIdade = idade[i]
				}
				se(idade[i] > 50){
					maiores50[i] = idade[i]
				}
				se(idade[i] >= 15 e idade[i] <= 30){
					soma15e30 = soma15e30 + idade[i]
				}
				
				media = media + idade[i]
				acm++
		}
		
		mediaFinal = media/acm
		
		menorIdade = idade[0]
		menorNome = nome[0]
		
		para(i = 0; i < rep; i++){
			se(idade[i] < menorIdade){
				idade[i] = menorIdade
				menorNome = nome[i]
			}
		}
		
		para(i=0; i<rep;i++){
			se(idade[i] < mediaFinal){
				abaixoMedia++
			}
		}
		
		para(i=0; i < rep; i++){
			//calculo da media das pessoas a cima de 50 
			se(maiores50[i] != 0){
				media50 = media50 + maiores50[i]
				div50++
			}
		}
		
		media50Final = media50/div50
		
		escreva("\nA maior idade digitada foi: ", maiorIdade, "\n")
		escreva("A media de pessoas maiores que 50 anos é igual: ", media50Final, "\n")
		escreva("O nome da pessoa com menor idade é: ", menorNome, "\n")
		escreva("A soma das idades das pessoas entre 15 e 30 anos é igual a: ", soma15e30, "\n")
		para(i = 0; i < rep; i++){
			se(idade[i] < mediaFinal){
				escreva("Pessoa abaixo da media: ", nome[i], "\n")
			}
		}
		escreva("Quantidade de pessoas abaixo da media geral: ", abaixoMedia)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 14, 9, 4}-{menorNome, 14, 20, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */