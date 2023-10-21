'''Fazer um algoritmo que calcule a soma dos elementos de um vetor'''

vet = []

for i in range(5):
    vet.append(int(input('Digite um valor: ')))

sum = 0

for i in range(5):
    sum = sum + vet[i]

print(f'A soma dos elementos do vetor é igual á: {sum}')