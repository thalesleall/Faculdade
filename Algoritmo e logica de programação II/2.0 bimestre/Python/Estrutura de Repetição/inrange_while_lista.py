for numero in range (0, 10, 1): #de 0 a 10 de 1 em 1 
    print(numero)

for numero in range (10, 0, -2):# de 10 a 0 de 2 em dois 
    print(numero)

for numero in range(10):#de 0 ate 9 de 1 em 1
    print(numero)


#Exemplo 1: 

lista = [1, 3, 4, 5, 7, 8]
for num in lista: 
    if num > 6:
        print(num)

print('\nFim exemplo 1')

#Exemplo 2:
i = 0
while(i < 10):
    print(i)
    i = i + 1
print('Fora da repetição', i)

#Exemplo 3:
conta = 0
x = 2
while(conta <= 5):
    print(x)
    conta += 1
else:
    print('Valor da variável conta é %d' %conta)