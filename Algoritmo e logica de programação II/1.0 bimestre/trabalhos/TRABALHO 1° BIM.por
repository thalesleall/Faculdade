programa
{
	inclua biblioteca Texto --> t
	funcao inicio()
	{
		real notas[40], menorNota, maiorNota, mediaTurma, porcentagem
		inteiro qtdAcima
		cadeia questoes[40][5], gabarito[5]
		cadeia nomes[40]

		dados(questoes, nomes)
		dadosGabarito(gabarito)
		corrigeProva(questoes, gabarito, notas)
		menorNota = calculaMenorNota(notas)
		maiorNota = calculaMaiorNota(notas)
		mediaTurma = calculaMedia(notas)
		qtdAcima = quantidadeAcima(notas, mediaTurma)
		porcentagem = porcentagemAprovados(notas)

		escreva("Menor nota da sala: ", menorNota)
		escreva("\nMaior nota da sala: ", maiorNota)
		escreva("\nMedia das notas da turma: ", mediaTurma)
		escreva("\nQuantidade de alunos com nota acima da média da turma: ", qtdAcima)
		escreva("\nPorcentagem de alunos aprovados: ", porcentagem, "%")
	}

	funcao dados(cadeia questoes[][],cadeia nomes[]){
		inteiro i, j

		para(i = 0; i < 40; i++){
			escreva("Nome do aluno: ")
			leia(nomes[i])
			para(j = 0; j < 5; j++){
				escreva("Escreva a resposta da ", j + 1, "° questão: ")
				leia(questoes[i][j])
				questoes[i][j] = t.caixa_alta(questoes[i][j])
				enquanto(questoes[i][j] != "A" e questoes[i][j] != "B" e questoes[i][j] != "C" e questoes[i][j] != "D"){
					escreva("Resposta invalida, digite novamente: ")
					leia(questoes[i][j])
					questoes[i][j] = t.caixa_alta(questoes[i][j])
				}
			}
		}
	}

	funcao dadosGabarito(cadeia gabarito[]){
		inteiro i

		escreva("Digite o gabarito da prova.\n")
		para(i = 0; i < 5; i++){
			escreva(i+1, "° questão: ")
			leia(gabarito[i])
			gabarito[i] = t.caixa_alta(gabarito[i])
			enquanto(gabarito[i] != "A" e gabarito[i] != "B" e gabarito[i] != "C" e gabarito[i] != "D"){
				escreva("Resposta invalida, digite novamente: ")
				leia(gabarito[i])
				gabarito[i] = t.caixa_alta(gabarito[i])
			}
			
		}
	}

	funcao corrigeProva(cadeia questoes[][], cadeia gabarito[], real notas[]){
		inteiro i, j

		para(i = 0; i < 40; i++){
			para(j = 0; j < 5; j++){
				se(questoes[i][j] == gabarito[j]){
					notas[i] = notas[i] + 2
				}
			}
		}
	}

	funcao real calculaMenorNota(real notas[]){
		inteiro i
		real menorNota = notas[40]
		para(i = 0; i < 40; i++){
			se(menorNota < notas[i]){
				menorNota = notas[i]
			}
		}
		retorne menorNota
	}
	funcao real calculaMaiorNota(real notas[]){
		inteiro i
		real maiorNota = notas[0]
		para(i = 0; i < 40; i++){
			se(maiorNota > notas[i]){
				maiorNota = notas[i]
			}
		}
		retorne maiorNota
	}
	funcao real calculaMedia(real notas[]){
		inteiro i, acm = 0
		real nota = 0.0, media = 0.0
		para(i = 0; i < 40; i++){
			nota += notas[i]
			acm++
		}
		media = nota/acm
		retorne media
	}
	funcao inteiro quantidadeAcima(real notas[], real mediaTurma){
		inteiro qtdeAcima = 0, i
		para(i = 0; i < 40; i++){
			se(notas[i] > mediaTurma){
				qtdeAcima++
			}
		}
		retorne qtdeAcima
	}
	funcao real porcentagemAprovados(real notas[]){
		real pct = 0.0, aprovados = 0.0, x
		inteiro i

		para(i = 0; i < 40; i++){
			se(notas[i] >= 7){
				aprovados++
			}
		}
		pct = (aprovados * 100)/40
		retorne pct
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1422; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */