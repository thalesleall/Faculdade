"""Crie um programa que leia um vetor de 30 números inteiros e gere um segundo vetor cujas posições pares são o dobro do vetor original e as ímpares são o triplo."""


vet = []
vet2 = []

for i in range(30):
    vet.append(int(input(f'Digite um valor para a posição {i+1}: ')))
    if(vet[i] % 2 == 0):
        vet2.append(vet[i] * 2)
    elif(vet[i] % 2 != 0):
        vet2.append(vet[i] * 3)

print(f'Vetor 1: {vet}\nVetor 2: {vet2}')