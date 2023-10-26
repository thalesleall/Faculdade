"""Escreva uma função que receba dois parâmetros e imprima o menor dos dois. Se eles forem iguais, imprima que eles são iguais."""

def main():
    v1 = int(input('Digite o valor 1: '))
    v2 = int(input('Digite o valor 2: '))
    numeros(v1, v2)

def numeros(v1, v2):
    if (v1 > v2):
        print(f'O maior número é {v1}')
    elif(v2 > v1):
        print(f'O maior numero é {v2}')
    elif(v1 == v2):
        print(f'Os valores {v1} e {v2} são iguais')

main()