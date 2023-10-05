#Fazer um programa para calcular a área de um círculo, fornecido o valor do raio.

import math

raio = float(input('Digite o valor do raio: '))

area = math.pi * (raio**2)

print('A area do circulo é igual a: {:.2f}' .format(area))