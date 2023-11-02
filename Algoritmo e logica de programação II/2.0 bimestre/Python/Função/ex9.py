"""Fazer um programa que possui um menu com as seguintes opções para executar diferentes funções, até que o usuário digite -1 e termine o programa:
◦ Escrever a tabuada de um número ou uma mensagem de erro caso o número não esteja entre 1 e 9. O número deve ser passado como parâmetro e a validação feita na função.
◦ Calcular o Índice de Massa Corporal (IMC): a fórmula é IMC = peso / altura2. Passar o peso e altura como parâmetros e retornar o IMC.
◦ Calcular o fatorial de um número. O número deve ser passado como parâmetro e retornar o resultado."""

def main():
    rept = 0
    
    while rept != -1:
        rept = int(input('Digite qual programa deseja utilizar: '))
        match rept: 
            case 1:
                tabuadaN = int(input('Digite um numero de 1 a 9 para o calculo da tabuada: '))
                tabuada(tabuadaN)
            case 2: 
                peso = int(input('Digite o peso: '))
                altura = int(input('Digite a altura: '))
                print(f'O IMC é igual a: {imc(peso, altura)}')
            case 3:
                f = int(input('Digite um numero: '))
                print(f'O fatorial desse numero é: {fatorial(f)}')
    
    print('Programa foi finalizado')



def tabuada(tabuadaN):
    if tabuadaN < 1 or tabuadaN > 9:
        print('O numero deve estar entre 1 e 9')
    else:
        for i in range(0, 11, 1):
            print(f'{tabuadaN} X {i} = {tabuadaN * i}')

def imc(peso, altura):
    imc = peso/altura
    return imc

def fatorial(f):
    fatorial = 1
    
    for i in range(1, f+1, 1): 
        fatorial *= i

    return fatorial
main()