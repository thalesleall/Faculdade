#Escreva um algoritmo que leia dois valores inteiros e diferentes, e mostre-os em ordem decrescente.

v1 = int(input('Digite o 1° valor: '))

v2 = int(input('Digite o 2° valor: '))

while v1 == v2:
    print('Numeros iguais, digite novamente: ')

    v1 = int(input('Digite o 1° valor: '))
    v2 = int(input('Digite o 2° valor: '))

if v1 > v2: 
    print(f'{v1}, {v2}')
else:
    print (f'{v2}, {v1}')