'''Construa um programa que calcule a média aritmética de um conjunto de números pares fornecidos pelo usuário. O usuário irá fornecer um total de 10 números.  
Observe que nada impede que o usuário forneça quantos números ímpares quiser, com a ressalva de que eles não poderão ser acumulados. '''

i = 0
acm = 0
numero = 0
while(i != 10):
    numero = int(input(f'Digite o {i + 1}° numero: '))
    if(numero % 2 == 0):
        acm += numero
        i += 1
    else:
        print('Numero impar, digite certo arrombado')
else:
    print(f'Media aritmetica dos numeros pares: {acm/10}')