programa {
	inclua biblioteca Matematica --> mat
  funcao inicio() {
    
    cadeia vinho
    inteiro acm, branco, rose, tinto, cem, porbranco = 0, porose = 0, portinto = 0 
    branco = 0
    rose = 0
    tinto = 0
    acm = 0
    vinho = ""
    cem = 0
    escreva("T para tinto \n")
    escreva("R para rose \n")
    escreva("B para branco \n")
    enquanto(vinho != "F" e vinho !="f"){
      escreva("Vinho: ")
      leia(vinho)
      se(vinho == "T" ou vinho == "t"){
        tinto = tinto + 1
      }
      senao{
        se(vinho == "R" ou vinho == "r"){
          rose = rose + 1
        }
        senao{
          se(vinho == "B" ou vinho == "b"){
            branco = branco + 1
          }
          senao{
          	se(vinho == "F" ou vinho == "f"){
          		escreva("")
          	}
          	senao{
          	escreva("Digite um vinho valido! \n")
          	acm = acm - 1
          	}
          }
        }
      }
      acm = acm + 1
      
    }
    cem = rose + tinto + branco
      porbranco = branco/cem * 100
      porose = rose/cem * 100
      portinto = tinto/cem * 100
      escreva(portinto, "% ", porbranco, "% ", portinto, "%")
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 415; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {acm, 6, 12, 3}-{branco, 6, 17, 6}-{rose, 6, 25, 4}-{tinto, 6, 31, 5}-{porbranco, 6, 43, 9}-{porose, 6, 58, 6}-{portinto, 6, 70, 8}-{cem, 6, 38, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */