function entrada() {
    let matriz = []
    entradaDados(matriz)
    console.log(matriz)
}

function entradaDados(matriz){
    for(let i = 0; i < 3; i++){
        matriz[i] = []
        alert(`Informe os elementos da linha ${i+1}`)
        for(let j = 0 < 4; j++){
            matriz[i][j] = Number(prompt(`Digite o valor do elementro ${(i + 1)}x ${(j + 1)}`))
        }
    }
}

function diagonalPrincipal(matriz){
    let soma = 0

    for(let i = 0; i < 4; i++){
        soma += matriz [i][i];
    }
    console.log(`A soma da diagonal principal é igual a: ${soma}`)
}