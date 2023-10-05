nome = input ('Nome: ')
idade = int(input('Idade: '))
nota = float(input('Digite sua nota: '))

print('%s possui %d anos e nota %.2f' %(nome, idade, nota))
print(nome, ' possui ', idade, ' anos e nota ', nota) #não usar 
print('{0} possui {1} anos e nota {2:.f}' .format(nome, idade, nota))
print('{} possui {} anos e nota {2:.f}' .format(nome, idade, nota))
print(f'{nome} possui {idade} anos e nota {nota:.2f}')

import math 
print(math.pi) 
valor = math.pi 
print('O valor é %.2f' %valor) 
result = math.sqrt(9) 
print(result)

palavra = 'Boa tarde!' 
print(palavra, len(palavra))
palavra = palavra + ' Boa noite!' 
print(palavra, len(palavra)) 
primeiro = '100' 
segundo = '200' 
print(primeiro + segundo) 
print(primeiro * 3) 
print(segundo * 2)

#Exemplo condicional

numero = int(input('Entre com um numero: '))

if numero > 0:
    print (numero,' é positivo')
elif numero < 0:
    print (numero ,' é negativo')
else:
    print (numero , ' é igual a zero')