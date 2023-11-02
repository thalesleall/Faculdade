"""Fazer uma função que calcule o fatorial de um número."""

def main():
    n = int(input('!'))
    print(fatorial(n))

def fatorial(n):
    fatorial = 1
    for i in range(1, n+1, 1):
        fatorial *= i
    
    return fatorial

main()