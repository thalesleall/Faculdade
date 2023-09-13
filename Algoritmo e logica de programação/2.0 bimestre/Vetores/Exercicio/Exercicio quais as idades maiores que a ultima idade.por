programa
{
	funcao inicio(){
		
		cadeia nomes[5], sexo[5]
		inteiro idade[5], i = 0, ultimaIdade = 0 
		
		para(i = 0; i < 5; i++){
			escreva("\nEscreva seu nome: ")
			leia(nomes[i])
			
			escreva("\nEscreva seu sexo: ")
			leia(sexo[i])
			
			escreva("\nEscreva sua idade: ")
			leia(idade[i])
		
		}
			ultimaIdade = idade[4]
			escreva("Pessoas com maior idade a ultima idade: \n")
			para(i = 0; i < 5; i++){
				se(idade[i] > ultimaIdade){
					escreva("Nome: ", nomes[i], " Sexo: ", sexo[i], " Idade: ", idade[i], "\n")
				}	
			}
 
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 507; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */