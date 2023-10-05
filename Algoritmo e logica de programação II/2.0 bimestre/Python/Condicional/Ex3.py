#Fazer um programa que calcule a média de um aluno na disciplina de ALP. 
#Para isso solicite o nome do aluno, a nota da prova A e a nota da prova B.
#Sabe-se que a nota da prova A tem peso 2 e a nota da prova B peso 1. Mostre a média e o nome do aluno como resultado.

nome = input("Digite seu Nome: ") #Nome do Aluno
nota_a = float(input("Nota Prova A: ")) # Nota da Prova A
nota_b = float(input("Nota Prova B: ")) # Nota da Prova B
media = ((nota_a * 2) + nota_b)/3 #Media ponderada

print(f'Nome do aluno: {nome}')
print('Media: {:.2f}' .format(media))