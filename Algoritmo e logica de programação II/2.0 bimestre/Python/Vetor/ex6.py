"""Crie um programa que permita a leitura de um vetor de 30 números inteiros e gere um segundo vetor com os mesmos dados, só que de maneira invertida, ou seja, 
o primeiro elemento do vetor original ficará na última posição do novo vetor, o segundo na penúltima posição e assim por diante."""

vet = []
vet2 = []

for i in range(5):
    vet.append(int(input(f'Digite o valor da posição {i}: ')))


for i in range(5 - 1, -1, -1):
    vet2.append(vet[i])


print(f'Vetor original: {vet}\n Vetor invertido: {vet2}')