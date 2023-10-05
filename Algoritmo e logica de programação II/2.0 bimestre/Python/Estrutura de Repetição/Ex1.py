#Faça um programa que efetue a soma de todos os números ímpares que são multiplos de 3 e que se encontram no conjunto de números de 1 até 500
soma = 0
for numero in range(1, 500, 1):
    if(numero % 2 != 0 and numero % 3 == 0):
        soma += numero 
print(soma)