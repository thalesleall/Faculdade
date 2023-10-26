"""Crie um programa que leia uma série de 50 notas e calcule quantas são 10% acima da média e quantas são 10% abaixo da média.
"""

vet = []
sumNotas = 0
contNotas = 0
for i in range(50):
    vet.append(f'Digite a {i+1}° nota: ')
    sumNotas += vet[i]
    contNotas += 1

media = sumNotas / contNotas
acimaM = 0
abaixoM = 0

for i in range(50):
    if(media + (10/100) >= vet[i]):
        acimaM += 1
    elif(media - (10/100) <= vet[i]):
        abaixoM += 1

print(f'Medias a cima{acimaM}\nMedias a baixo: {abaixoM}')