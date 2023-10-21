function main(){
    let matriz = []
    preencheMatriz(matriz)
    maiorElemento(matriz)
    menorElemento(matriz)
}

function preencheMatriz(matriz){
    for(let i = 0; i <  6; i++){
        matriz[i] = [];
        for(let j = 0; j < 3; j++){
            matriz[i][j] = Number(prompt(`Digite um elemento: `))
        }
    }
}

function maiorElemento(matriz){
    let maior = matriz[0][0]
    let posicaoI = 0
    let posicaoJ = 0
    for(let i = 0; i < 6; i++){
        for (let j = 0 ; j < 3; j++) {
            if(maior < matriz[i][j]){
                maior = matriz[i][j]
                posicaoI= i, posicaoJ = j
            }
        }
    }
    alert (`O maior elemento é ${maior}. Ele se encontra na posição [${posicaoI}, ${posicaoJ}]`)
}

function menorElemento(matriz){
    let menor = matriz[0][0]
    let posicaoI = 0
    let posicaoJ = 0
    for(let i = 0; i < 6; i++){
        for (let j = 0 ; j < 3; j++) {
            if(menor > matriz[i][j]){
                menor = matriz[i][j]
                posicaoI= i, posicaoJ = j
            }
        }
    }
    alert (`O menor elemento é ${maior}. Ele se encontra na posição [${posicaoI}, ${posicaoJ}]`)
}