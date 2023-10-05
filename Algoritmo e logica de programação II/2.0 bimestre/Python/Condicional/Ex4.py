#Construa um programa que, tendo como entrada dois pontos quaisquer do plano, imprima a distância entre eles.

import math

x1 = float(input('Digite x1: '))
x2 = float(input('Digite x2: '))

y1 = float(input('Digite y1: '))
y2 = float(input('Digite y2: '))

distancia = math.sqrt(((x2 - x1)**2) + ((y2 - y1)**2)) 

print('A distancia entre os dois pontos é igual a {:.2f}' .format(distancia))