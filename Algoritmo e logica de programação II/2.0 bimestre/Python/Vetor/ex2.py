'''Fazer um programa que calcule a média dos números pares de um vetor.'''
import random

vet = []

for i in range(10):
    vet.append(int(random.randint(10, 50)))

print("Vetor: ", vet)
sumpar = 0
cont = 0
for i in range(10):
    if(vet[i] % 2 ==0) :
        sumpar += vet[i]
        cont += 1

print(f'A media dos numeros pares do vetor é igual a: {sumpar/cont}')