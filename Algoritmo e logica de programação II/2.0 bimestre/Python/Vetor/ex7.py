"""Crie um programa que leia um vetor de 20 números inteiros e em seguida divida estes números em outros 2 novos vetores,
separando os números pares dos números ímpares."""

vet = []
vImpar = []
vPar = []


for i in range(20):
    vet.append(int(input(f'Digite o numero inteiro de posição {i}°: ')))
    if(vet[i] % 2 == 0):
        vPar.append(vet[i])
    elif(vet[i] % 2 != 0):
        vImpar.append(vet[i])

print(f'Pares: {vPar}\nImpares: {vImpar}')