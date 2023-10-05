#Prepare um algoritmo capaz de inverter um número, de 3 dígitos, fornecido, ou seja, apresentar primeiro a unidade e, depois, a dezena e a centena.

numero = int(input('Digite um numero de 3 digitos: '))

if 100 <= numero <= 999:
    centena = numero // 100
    dezena = (numero // 10) % 10
    unidade = numero % 10

    print(f'Numero invertido: {unidade}{dezena}{centena}')

else:
    print("Número invalido.")