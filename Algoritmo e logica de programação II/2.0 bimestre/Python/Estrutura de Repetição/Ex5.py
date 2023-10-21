'''Imagine uma brincadeira entre dois colegas, na qual um pensa um número e o outro deve fazer chutes até acertar o número imaginado. 
Como dica, a cada tentativa é dito se o chute foi alto ou foi baixo. 
Elabore um programa dentro deste contexto, que leia o número imaginado e os chutes, ao final mostre quantas tentativas foram necessárias para descobrir o número.'''

num = int(input("Digite um numero: "))

chute = int(input("Tentativa: "))
while(chute != num):
    if (chute > num) :
        print ("O Chute foi Alto")
    elif (chute < num):
        print ("O Chute foi Baixo")
    chute = int(input("Tentativa: "))



else:
    print(f"Você acertou!")

