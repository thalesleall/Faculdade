programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro opcao, i

		escreva("Escolha um programa.")
		escreva("\n1. Escrever a tabuada de um numero entre 1 e 9.")
		escreva("\n2. Encontrar o menor elementro entre três números.")
		escreva("\n3. Calcular o fatorial de um numero.")
		escreva("\n4. Calcular o seguinte somatório: \nS = 1 + 1/1! + 1/2! + 1/3! + ... + 1/N!, sendo N fornecido pelo usuário.")
		escreva("\n5. Buscar um elemento em um vetor.")
		escreva("\n6. Calcular a média dos números pares de uma matriz.")
		escreva("\n0. Para finalizar o programa. ")
		escreva("\n\nDigite sua opção: ")
		
		leia(opcao)
		enquanto(opcao != 0){
			
			escolha(opcao){
				caso 1:
					inteiro numero
						escreva("Digite um numero para calcular a tabuada: ")
						leia(numero)
						tabuada(numero)
					pare
					
				caso 2:
					inteiro numerosCase2[3], menorV
						escreva("Digite 3 numeros: ")
							para(i = 0; i <3; i++){
								escreva("\nNumero ", i+1, ": ")
								leia(numerosCase2[i])
							}
					menorV = menorValor(numerosCase2)
					escreva("\nO menor valor entre esses 3 numero é: ", menorV, "\n\n")
					pare
					
				caso 3:
					real nFatorial 
					escreva("Digite o um numero para calcular o seu fatorial !")
					leia(nFatorial)
					escreva("\nResposta: ", fatorial(nFatorial), "\n")
					pare
				caso 4:
					real N
					escreva("Digite um valor para N: ")
					leia(N)
					

					escreva("O valor da expressão é: ", expressao(N), "\n")
					pare
				caso 5:
					inteiro n, vet[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
					escreva("Digite um numero para procurar no vetor: ")
					leia(n)
					se(procuraVetor(n, vet) == -1){
						escreva(procuraVetor(n, vet))
					}
					senao{
						escreva("Numero encontrado na posição: ", procuraVetor(n, vet), "\n")
					}
					pare
				caso 6:
					inteiro mat[7][7] 
					inteiro j
					para(i = 0; i < 7; i++){
						para(j = 0; j < 7; j++){
							mat[i][j] = u.sorteia(0, 9)
						}
					}
					escreva("Matriz: \n")
					para(i = 0; i < 7; i++){
						escreva("\n")
						para(j = 0; j < 7; j++){
							escreva(mat[i][j], "   ")
						}
					}
					escreva("\n")

					escreva("\nMédia dos numeros pares da matriz: ", parMatriz(mat), "\n")
				
					pare
			}
			escreva("Escolha um programa.")
			escreva("\n1. Escrever a tabuada de um numero entre 1 e 9.")
			escreva("\n2. Encontrar o menor elementro entre três números.")
			escreva("\n3. Calcular o fatorial de um numero.")
			escreva("\n4. Calcular o seguinte somatório: \nS = 1 + 1/1! + 1/2! + 1/3! + ... + 1/N!, sendo N fornecido pelo usuário.")
			escreva("\n5. Buscar um elemento em um vetor.")
			escreva("\n6. Calcular a média dos números pares de uma matriz.")
			escreva("\n0. Para finalizar o programa. ")
			escreva("\n\nDigite sua opção: ")
			leia(opcao)
		}
		escreva("\nPrograma finalizado.")
	}

	
	funcao tabuada(inteiro numero){
		enquanto(numero < 1 ou numero > 9){
			escreva("O numero deve estar entre 1 e 9, digite novamente: ")
			leia(numero)
		}
		para(inteiro i = 1; i < 11; i++){
			escreva( numero, " X ", i, " = ", numero*i, "\n")
		}
		
	}

	funcao inteiro menorValor(inteiro numerosCase2[]){
		inteiro menorV = numerosCase2[0]

		para(inteiro i = 0; i < 3; i++){
			se(numerosCase2[i] < menorV){
				menorV = numerosCase2[i]
			}
		}
		retorne menorV
	}
	funcao real fatorial(real numero){
		real resp = 1.0
		inteiro i

		para(i = 2; i <= numero; i++){
			resp *= i
		}
		
		retorne resp
	}
	funcao real expressao(real N){
		real S = 1.0
		inteiro i

		para(i = 1; i <= N; i++){
			S += 1/fatorial(i)
		}
		
		retorne S
	}
	funcao inteiro procuraVetor(inteiro n, inteiro vet[]){
		inteiro i, posicao = 0
		para(i = 0; i < 10; i++){
			se(n == vet[i]){
				posicao = i
				pare
			}
			senao{
				posicao = -1
			}
		}
		retorne posicao
	}

	funcao real parMatriz(inteiro mat[][]){
		inteiro i, j, contPar = 0, sumPar = 0
		real mediaPar = 0.0

		para(i = 0; i < 7; i++){
			para(j = 0; j < 7; j++){
				se(mat[i][j] % 2 == 0){
					contPar++
					sumPar = sumPar + mat[i][j] 
				}
			}
		}
		
		mediaPar = sumPar/contPar
		retorne mediaPar
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2235; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */