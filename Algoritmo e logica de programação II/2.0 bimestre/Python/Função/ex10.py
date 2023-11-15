"""Fazer uma função que receba o valor de N como parâmetro, calcular e retorne o valor do somatório S"""

def main():
    n = int(input('Digite o valor de N: '))
    print(f'{somatorio(n)}')

def somatorio(n):
    s = 1
    for i in range(1, n+1):
        s = s + (i/i**2)
    return s
main()