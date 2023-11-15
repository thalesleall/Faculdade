import random
from collections import Counter

def main():
    dados = []
    for i in range(10):
        dados.append(random.randint(1, 10))
    print(dados)

    if len(moda(dados)) <= 1:
        print(f'A moda é igual a: {moda(dados)}')
    else:
        print(f'Esse vetor não há moda')
    

"""Jaque, tentei fazer meu maximo porem não tava saindo, então tive que pegar algumas partes da internet, por isso dos imports nunca vistos em sala!!"""
def moda(dados):
    moda = []
    contagem = Counter(dados).most_common()
    frequencias = [list(i) for i in contagem]
    if frequencias[0][1] > 1:
        for i in frequencias:
            if i[1] == frequencias[0][1]:
                moda.append(i[0])
            else:
                break
    return moda

main()



