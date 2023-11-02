"""Fazer uma função que calcule a média dos valores pares de um vetor."""

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
    sumPar = 0
    contPar = 0

    for i in range(15):
        if(vet[i] % 2 == 0):
            sumPar += vet[i]
            contPar += 1
    
    return sumPar/contPar
        
main()