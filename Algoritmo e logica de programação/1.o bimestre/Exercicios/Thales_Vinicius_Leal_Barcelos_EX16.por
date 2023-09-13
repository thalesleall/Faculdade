programa
{
	
	funcao inicio()
	{
		inteiro r
		escreva("Escolha um animal entre Leão, Cavalo, Homem, Macaco, Morcego, Baleia, Aveztruz, Pingum, Pato, Águia, Tartaruga, Crocodilo e Cobra")
		escreva("Agora responda as seguintes perguntas: \n")

		escreva("Qual o Grupo do seu animal? \n")
		escreva("1 - Mamifero \n")
		escreva("2 - Aves \n")
		escreva("3 - Reptil \n")
		leia(r)

		escolha(r){ //Entre Mamiferos e Aves e Repteis
			caso 1: //mamiferos
				escreva("Qual divisão animal se encaixa? \n")
				escreva("1 - Quadrupede\n")
				escreva("2 - Bipede\n")
				escreva("3 - Voador \n")
				escreva("4 - Aquaticos \n")
				leia(r)
				escolha(r){
					caso 1: //Quadrupdes
						escreva("Qual divisão animal se encaixa? \n")
						escreva("1 - Carnivoro\n")
						escreva("2 - Herbivoro \n")
						leia(r)
						escolha(r){
							caso 1: //Carnivoros
								escreva("Seu animal é um Leão!")
							pare
							
							caso 2: //Herbivoros
								escreva("Seu animal é um Cavalo!")
							pare
							caso contrario:
							escreva("Escolha uma opção valida")
								}
					pare
						
					caso 2: //Bipedes
						escreva("Qual divisão animal se encaixa? \n")
						escreva("1 - Onivoro \n")
						escreva("2 - Frutivoros \n")
						leia(r)
						escolha(r){
							caso 1: //Onivoros
								escreva("Seu animal é um Homem!")
							pare
							
							caso 2: //Frutivoros
								escreva("Seu animal é um Macaco!")
							pare
							caso contrario:
							escreva("Escolha uma opção valida")
							pare
							}
					pare
					caso 3: //Voadores
					escreva("Seu animal é um Morcego!")
					pare
					caso 4: //Aquáticos
					escreva("Seu animal é uma Baleia!")
					pare
					caso contrario:
					escreva("Escolha uma opção valida")
					pare
				}

		 	pare
			caso 2: //Aves
				escreva("Qual divisão animal se encaixa? \n")
				escreva("1 - Não-Voador\n")
				escreva("2 - Nadadores\n")
				escreva("3 - De rapina \n")
				leia(r)
				escolha(r){
					caso 1: //Não Voadores
						escreva("Qual divisão animal se encaixa? \n")
						escreva("1 - Tropicais \n")
						escreva("2 - Polares \n")
						leia(r)
						escolha(r){
							caso 1: //Tropicais
							escreva("Seu animal é um Avestruz!")
							pare
							caso 2: //Polares
							escreva("Seu animal é um Pinguim!")
							pare
							caso contrario:
							escreva("Escolha uma opção valida")
							pare
						}
					pare
					caso 2: //Nadadoras
					escreva("Seu animal é um Pato!")
					pare
					caso 3: //De rapina
					escreva("Seu animal é uma Aguia!")
					pare
					caso contrario:
					escreva("Escolha uma opção valida")
					pare
					}
			pare
			caso 3://Repteis
				escreva("Qual divisão animal se encaixa? \n")
				escreva("1 - Com casco\n")
				escreva("2 - Carnivoros\n")
				escreva("3 - Sem patas\n")
				leia(r)
				escolha(r){
					caso 1: //Com casco
						escreva("Seu animal é uma Tartaruga!")
					pare
					caso 2: //Carnivoro
						escreva("Seu animal é um Crocodilo!!")
					pare
					caso 3: //Sem patas
						escreva("Seu animal é uma Cobra!!")
					pare
					caso contrario:
					escreva("Escolha uma opção valida")
					pare
				}
			pare
			caso contrario:
			escreva("Escolha uma opção valida")
		}
	}

	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */