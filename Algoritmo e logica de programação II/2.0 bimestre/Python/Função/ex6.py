"""Fazer uma função que calcule a média dos valores das posições ímpares de um vetor."""

from random import randint
def main():
    vet = []
    preencheVetor(vet)
    print(f'A media dos valores impares do vetor é: {mediaImpar(vet)}')

def preencheVetor(vet):
    for i in range(15):
        vet.append(randint(1,100))
    print(vet)

def mediaImpar(vet):
    sumImpar = 0
    contImpar = 0

    for i in range(15):
        if(i % 2 != 0):
            sumImpar += vet[i]
            contImpar += 1
    
    return sumImpar/contImpar
        
main()