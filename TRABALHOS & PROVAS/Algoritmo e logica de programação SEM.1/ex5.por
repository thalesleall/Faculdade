programa
{
		//Thales Vinicius Leal Barcelos 24740
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real lado1, lado2, lado3
		escreva("Por favor digite os 3 lado de um triangulo! \n")
		leia(lado1)
		leia(lado2)
		leia(lado3)

		se(lado1 > lado2 e lado1 > lado3){
			se(lado1 >= (lado2+lado3)){
			escreva("Nenhum triângulo foi formado!")
				}
				senao{
					se(mat.potencia(lado1, 2.0) == mat.potencia(lado2, 2.0) + mat.potencia(lado3, 2.0)){
						escreva("Um triângulo retangulo foi formado!")
					}
					senao{
						se(mat.potencia(lado1, 2.0) > (mat.potencia(lado2, 2.0) + mat.potencia(lado3, 2.0))){
							escreva("Um triângulo obtusângulo foi formado!")
						}
						senao{
							se(mat.potencia(lado1, 2.0) < (mat.potencia(lado2, 2.0) + mat.potencia(lado3, 2.0))){
								escreva("Um triângulo acutângulo foi formado!")
							}
							senao{
								escreva("Digite valores validos!")
					}
				}
			}
		}
	}
		senao{
			se(lado2 > lado1 e lado2 > lado3){
				se(lado2 >= (lado1+lado3)){
				escreva("Nenhum triângulo foi formado!")
				}
					senao{
						se(mat.potencia(lado2, 2.0) == mat.potencia(lado1, 2.0) + mat.potencia(lado2, 2.0)){
							escreva("Um triângulo retangulo foi formado!")
						}
						senao{
							se(mat.potencia(lado2, 2.0) > (mat.potencia(lado1, 2.0) + mat.potencia(lado3, 2.0))){
								escreva("Um triângulo obtusângulo foi formado!")
							}
							senao{
								se(mat.potencia(lado2, 2.0) < (mat.potencia(lado1, 2.0) + mat.potencia(lado3, 2.0))){
									escreva("Um triângulo acutângulo foi formado!")
								}
								senao{
									escreva("Digite valores validos!")
					}
				}
			}
		}
	}
			senao{
				se(lado3 > lado1 e lado3 > lado2){
					se(lado3 >= (lado1+lado2)){
					escreva("Nenhum triângulo foi formado!")
						}
						senao{
							se(mat.potencia(lado3, 2.0) == mat.potencia(lado1, 2.0) + mat.potencia(lado2, 2.0)){
								escreva("Um triângulo retangulo foi formado!")
							}
							senao{
								se(mat.potencia(lado3, 2.0) > (mat.potencia(lado1, 2.0) + mat.potencia(lado2, 2.0))){
									escreva("Um triângulo obtusângulo foi formado!")
								}
								senao{
									se(mat.potencia(lado3, 2.0) < (mat.potencia(lado1, 2.0) + mat.potencia(lado2, 2.0))){
										escreva("Um triângulo acutângulo foi formado!")
									}
									senao{
										escreva("Digite valores validos!")
									}
								}
							}
						}
				}
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {lado1, 7, 7, 5}-{lado2, 7, 14, 5}-{lado3, 7, 21, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */