programa
{
	/* 
	Fazer um subprograma que receba, por parâmetro, a hora de início e a hora de término de um jogo, 
	ambas subdivididas em 2 valores distintos: horas e minutos. 
	O subprograma deve retornar a duração do jogo em minutos, considerando que o tempo máximo de duração 
	de um jogo é de 24 horas e que o jogo pode começar em um dia e terminar no outro.
	*/
	
	funcao inicio()
	{
		inteiro horasInicio, horasFim, minutosInicio, minutosFim, duracao

		faca{
			escreva("Digite a hora de inicio: ")
			escreva("\nHoras: ")
			leia(horasInicio)
			escreva("Minutos: ")
			leia(minutosInicio)
			escreva("\nInicio: ", horasInicio, ":",minutosInicio, "\n")
	
			escreva("\nDigite a hora de termino: ")
			escreva("\nHoras: ")
			leia(horasFim)
			escreva("Minutos: ")
			leia(minutosFim)
			escreva("\nFim: ", horasFim, ":",minutosFim, "\n")
		}enquanto(tempoMax(horasInicio, horasFim, minutosInicio, minutosFim) == falso)
		

		duracao = duracaoJogo(horasInicio, horasFim, minutosInicio, minutosFim)
		escreva("\nA duração do jogo foi igual a: ", duracao, " minutos")
	}

	funcao logico tempoMax(inteiro horasInicio, inteiro horasFim, inteiro minutosInicio, inteiro minutosFim){
		inteiro duracao

			se(horasInicio > horasFim){
				duracao = (1440 - (horasInicio*60+minutosInicio)) + (horasFim * 60 + minutosFim)
			}
			senao{
				duracao = (horasFim * 60 + minutosFim) - (horasInicio * 60 + minutosInicio)
			}

			se(duracao > 1440){
				retorne falso
			}
			senao se(duracao <= 0){
				retorne falso
			}
			senao{
				retorne verdadeiro
			}
		
	}
	funcao inteiro duracaoJogo(inteiro horasInicio, inteiro horasFim, inteiro minutosInicio, inteiro minutosFim){
		inteiro duracao

			se(horasInicio > horasFim){
				duracao = (1440 - (horasInicio*60+minutosInicio)) + (horasFim * 60 + minutosFim)
			}
			senao{
				duracao = (horasFim * 60 + minutosFim) - (horasInicio * 60 + minutosInicio)
			}
		retorne duracao
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1923; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */