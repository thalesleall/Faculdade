"""Fazer um algoritmo que leia a idade e o nome de 30 pessoas (o algoritmo não deve permitir valores inválidos). Os valores lidos devem ser armazenados em um vetor.
 Após a leitura de todos os valores, encontre: 

a) a média das idades; 
b) a quantidade de pessoas que possuem idade acima da média; 
c) o nome das pessoas que possuem idade abaixo da média; 
d) o nome da pessoa mais velha e da mais nova; 
e) para cada número lido, mostre uma tabela contendo o valor lido e o fatorial deste valor."""

vetNomes = []
vetIdades = []

def leituraDados():
    for i in range(30):
        
        vetNomes.append(input(f'Digite o {i + 1}° nome: '))
        vetIdades.append(int(input(f'Digite a {i + 1}° idade: ')))
        while(vetIdades[i] <= 0):
            vetIdades[i] = int(input(f'Essa idade é invalida, digite novamente: '))

def mediaIdades(vetIdades):
    soma = 0
    for i in range(30):
        soma = soma + vetIdades[i]
    
    print(f'Media da turma: {soma/30}')
    return soma/30

def abaixoMedia(vetIdades, vetNomes):
    for i in range(30):
        if(vetIdades[i] < mediaIdades(vetIdades)):
            print(f'{vetNomes[i]} está abaixo da media.')

def maisVelhaNova(vetNomes, vetIdades):
    velhaI = vetIdades[0]
    velhaN = vetNomes[0]
    novaI = vetIdades[0]
    novaN = vetNomes[0]
    
    for i in range(30):
        if(vetIdades[i] < novaI):
            novaI = vetIdades[i]
            novaN = vetNomes[i]

    for i in range(30):
        if(vetIdades[i] > velhaI):
            velhaI = vetIdades[i]
            velhaN = vetNomes[i]
    print(f'Mais velha: {velhaN}\nMais nova: {novaN}')

def fatorial(n):
    fatorial = 1
    for i in range(1, n + 1):
        fatorial *= i
    return fatorial


def fatorialIdades(vetIdades):
    n = 0
    for i in range(30):
        n = vetIdades[i]
        print(f'|{vetIdades[i]}|{fatorial(n)}')
            


leituraDados()
mediaIdades(vetIdades)
abaixoMedia(vetIdades, vetNomes)
maisVelhaNova(vetNomes, vetIdades)
fatorialIdades(vetIdades)