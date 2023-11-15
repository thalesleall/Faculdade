def valorPagamento(valor, atraso):
    valorFinal = 0
    if(atraso > 0):
        valorFinal = valor + (valor * (3/100)) + ((0.1/100) * atraso)
    
    elif(atraso == 0):
        valorFinal = valor
    

    return valorFinal

valor = 1
qtde = 0
pgtoFinal = 0
while(valor != 0):
    valor = int(input(f'Digite o valor da prestação de serviço: '))
    if valor == 0:
        break;
    atraso = int(input('Digite a quantidade de dias em atraso: '))
    pgto = valorPagamento(valor, atraso)
    pgtoFinal += pgto
    qtde+= 1
    print(f'O valor a ser pago é: {round(pgto, 2)}')
print(f'Relatorio final:\n -Valor total de prestações pagas: {round(pgtoFinal, 2)}\n -Quantidade de prestações pagas: {qtde}')