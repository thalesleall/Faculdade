"""Fazer uma função que retorne o maior elemento de um vetor."""
from random import randint
def main():
    vet = []
    preencheVetor(vet)
    print(f'O maior elemento do vetor é: {maiorElemento(vet)}')

def preencheVetor(vet):
    for i in range(15):
        vet.append(randint(1,100))
    print(vet)

def maiorElemento(vet):
    maior = vet[0]
    for i in range(15):
        if(vet[i] > maior):
            maior = vet[i]
    return maior


main()      