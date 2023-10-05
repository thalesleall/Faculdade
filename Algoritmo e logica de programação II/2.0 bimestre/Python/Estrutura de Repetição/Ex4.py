'''Construa um programa que calcule a média aritmética de um conjunto de números pares que forem fornecidos pelo usuário. O valor de finalização será a entrada do número 0 (zero).  
Observe que nada impede que o usuário forneça quantos números ímpares quiser, com a ressalva de que eles não poderão ser acumulados. '''

numero = int(input('Digite um numero par: '))
acm = 0
cont = 0

while numero != 0:
    if numero % 2 == 0:
       acm += numero
       cont += 1 
    numero = int(input('Digite um numero par: '))
else:
    print(f'Media aritmetica dos numeros pares fornecidos: {acm/cont}')
