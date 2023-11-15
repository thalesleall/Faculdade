from random import choice
def main():
    world = palavra()
    vetTentivas = [6, 7, 8, 9, 10, 11]
    qtdeTentativas = tentativas(vetTentivas)
    jogo(world, qtdeTentativas)


def palavra():
    with open(r"D:\OneDrive\Documentos\Faculdade\Algoritmo e logica de programação II\2.0 bimestre\Python\Trabalho\palavras.txt", "r") as arquivo:
        for palavra in arquivo:
            palavra = arquivo.read().split()

    return choice(palavra)

def tentativas(vetTentivas):
    vetTentivas = [6, 7, 8, 9, 10, 11]
    return choice(vetTentivas)

def jogo(world, qtdeTentativas):
    """Transforma a palavra em minuscula"""
    world_lower = [e.lower() for e in world]
    world_lower = list(world_lower)
    
    """Engine do jogo"""
    tamanho = []
    existe = []
    ganhou = False
    for i in range(len(world_lower)): 
         tamanho.append("_")
    
    print('Bem vindo ao jogo da forca!')
    print('A palavra tem', len(world_lower), 'letras')
    print(tamanho)
    
    while qtdeTentativas > 0 and ganhou == False:
        print(f'\nQuantidade de tentativas restantes: {qtdeTentativas}')
        
        tentativa = input('Digite uma letra: ').lower()
        
        for i in range(len(existe)):
            if existe[i] == tentativa:
                print('Letra já digitada')
                qtdeTentativas -= 1

        if tentativa in world_lower and tentativa not in existe:
                print('Letra correta')
                for i in range (len(world_lower)):
                    if tentativa == world_lower[i]:
                        tamanho[i] = tentativa
                print(tamanho) 
        elif tentativa not in world_lower: 
                print('Letra incorreta')
                qtdeTentativas -= 1
        existe.append(tentativa)
        
        if tamanho == world_lower:
            print('Você ganhou!!!!!!!!!!!!')
            ganhou = True
        

        

        
        
    
main()