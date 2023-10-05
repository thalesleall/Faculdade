'''
Tendo como dados de entrada a altura e o sexo de uma pessoa, construa um algoritmo que 
calcule o seu peso ideal, utilizando as seguintes fórmulas:
- para homens:   (72.7 * h) - 58
- para mulheres: (62.1 * h) - 44.7

'''

resp = str(input('Homem ou mulher?\nH para homem\nM para mulher: ')).upper()
altura = int(input('Digite sua altura: '))
if(resp == 'H'):
    peso = (72.7 * altura) - 58
elif(resp == 'M'):
    peso = (62.1 * altura) - 44.7
else:
    print('Sexo invalido')

print(f'Seu peso ideal é igual a {peso}')