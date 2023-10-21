'''Considere um programa que calcule a média aritmética geral de uma classe de alunos e imprima a quantidade de notas que estão acima da média calculada. 
O usuário deve entrar com a quantidade de alunos.'''

vet = []
nomes = []
N = int(input('Digite a quantidade de alunos: '))
sum = 0
for i in range(N):
    nomes.append(str(input('Digite o nome do aluno: ')))
    vet.append(int(input('Digite a nota do aluno: ')))
    sum = sum + vet[i]

print(f'A media aritmetica geral é igual a: {sum/N}')
