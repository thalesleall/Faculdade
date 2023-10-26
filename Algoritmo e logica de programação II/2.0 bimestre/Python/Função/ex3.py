"""Fazer uma função que calcule a média dos elementos de um vetor."""

def main():
    vet1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    soma = somavet(vet1)
    media(vet1, soma)

    print(f'A soma do vetor é igual a: {soma}')

def somavet(vet1):
    sum = 0
    for i in range(10):
        sum += vet1[i]
    return sum

def media(vet1):
    media = somavet(vet1)/len(vet1)
    print(f'Media: {media}')


main()