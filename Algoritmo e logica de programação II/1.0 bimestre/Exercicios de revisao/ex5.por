programa
{
	
	//5. Fazer um algoritmo que leia a idade e o nome de 30 pessoas (o algoritmo não deve permitir valores inválidos). 
	//Os valores lidos devem ser armazenados em um vetor. Após a leitura de todos os valores, encontre: 
	//a) a média das idades; 
	//b) a quantidade de pessoas que possuem idade acima da média; 
	//c) o nome das pessoas que possuem idade abaixo da média; 
	//d) o nome da pessoa mais velha e da mais nova; 
	//e) para cada número lido, mostre uma tabela contendo o valor lido e o fatorial deste valor.
	
	funcao inicio()
	{
		cadeia nomes[30], nome, maisVelha, maisNova
		inteiro idades[30], idade, i, sumIdade=0, qtdeAcima = 0, j, fatorial = 1
		real mediaIdades = 0.0

		para(i=0; i<30; i++){
			escreva("Digite o nome da, ", i+1, "° pessoa: ")
			leia(nomes[i])
			escreva("Digite a idade da, ", i+1, "° pessoa: ")
			leia(idade)
			
			enquanto(idade < 0 e idade >= 123){//123 = idade do ser humano que viveu mais tempo na terra
					escreva("Idade invalida, digite novamente")
					leia(idade)
			}
			
			idade = idades[i]		
		}

		para(i=0;i<30;i++){
			sumIdade += idades[i]
		}
		mediaIdades = sumIdade/30.0
		
		para(i=0;i<30;i++){
			se(idades[i] > mediaIdades){
				qtdeAcima++
			}
			senao se(idades[i] < mediaIdades){
				escreva("Abaixo da média: ", nomes[i], "\n")
			}
		}

		para(i=0; i<30; i++){
			se(idades[i] > mediaIdades){
				maisVelha = nomes[i]
			}
			se(idades[i] < mediaIdades){
				maisNova = nomes[i]
			}
		}

		escreva("Média das idades: ", mediaIdades)
		escreva("\nQuantidade de pessoas que possuem idade acima da media: ", qtdeAcima)
		escreva("\nPessoa mais velha: ", maisVelha, "; Pessoa mais nova: ", maisNova)

		escreva("\nFatorial das idades: \n")
		para(i = 0; i < 30; i++){
			para(j = idades[i]; j > 1; j--){
				fatorial *= j
			}
			escreva("Valor: ", idades[i], " | Fatorial: ", fatorial)
		}
		
	

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1881; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */