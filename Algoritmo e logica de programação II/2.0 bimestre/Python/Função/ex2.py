"""Fazer uma função que calcule a soma dos elementos de um vetor."""

def main():
    vet1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    soma = somavet(vet1)

    print(f'A soma do vetor é igual a: {soma}')

def somavet(vet1):
    sum = 0
    for i in range(10):
        sum += vet1[i]
    return sum
    

main()
