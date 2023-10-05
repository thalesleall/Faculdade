#Fazer um algoritmo que leia um número e imprima se o número é par ou ímpar.

numero = int(input('Digite um numero: '))

if numero % 2 == 0:
    print('{} é PAR'.format(numero))
elif numero % 2 != 0:
    print('{} é IMPAR'.format(numero))
