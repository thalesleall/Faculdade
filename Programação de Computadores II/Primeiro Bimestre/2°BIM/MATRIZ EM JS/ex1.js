//Faça um programa onde uma matriz de 3x4 salve o valor das vendas semanais de 3 vendedores e no final do mês diga quanto esse vendedor faturou 

function principal(){
    let matriz = []

    entradaDados(matriz)
    console.log(`A soma de cada semana é igual á ${vendasMensais(matriz)}`)
    
}

function entradaDados(){
    let i, j

    for(i = 0; i < 3; i++){
        matriz[i] = []
            for(j = 0; j < 4; j++){
                matriz[i][j] = Number(prompt((`Digite o valor da posição [${i}, ${j}]`))
            }
    }
}

function vendasMensais(matriz){
    let soma = []
    let somasemana = 0
    let i, j
        for(i = 0; i < 3; i++){
            somasemana = 0
            for(j = 0; j < 4; j++){
                somasemana += matriz[i][j]
                soma.push(somasemana)
            }
        }
    return soma
}