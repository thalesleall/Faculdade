"""Fazer um programa que leia um vetor de 20 números inteiros e determine qual o maior e o menor número do vetor e imprima os dois valores."""

vet = []
i = 0

for i in range(20):
    vet.append(int(input(f'Digite um valor correspondente a {i+1}° posição: ')))

maior = vet[0]
menor = vet[0]
for i in range(20):
    if(vet[i] > maior):
        maior = vet[i]
    if(vet[i] < menor): 
        menor = vet[i]

print(f'Menor numero: {menor}\nMaior numero: {maior}')

