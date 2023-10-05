'''Fazer um algoritmo que leia 3 valores inteiros e verifique se eles podem formar  um triângulo. 
Se for possível formar um triângulo, escreva uma mensagem informando se é um triângulo equilátero, isósceles ou escaleno.
Observações:

- O comprimento de um lado do triângulo é sempre menor do que a soma dos outros dois.
- Equilátero:  todos lados iguais
- Isósceles: dois lados iguais
- Escaleno: todos os lados diferentes'''

l1 = int(input('Digite o 1° lado: '))
l2 = int(input('Digite o 2° lado: '))
l3 = int(input('Digite o 3° lado: '))

if l1 > 0 and l2 > 0 and l3 > 0:
    if (l1 + l2) > l3 and (l2 + l3) > l1 and (l1 + l3) > l1:
        if l1 == l2 == l3: 
            print('\nTriangulo equilatero')
        elif l1 == l2 or l1 == l3 or l2 == l3:
            print('\nTriangulo isosceles\n')
        elif l1 != l2 and l2 != l3 and l1 != l3:
            print('\n Triangulo escaleno')
    else:
        print('Triangulo invalido pois as somas de dois lados sao menores que o terceiro')
else:
    print('Triangulo invalido')