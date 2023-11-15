function leituraDados(matriz){
    for(let i = 0; i <4; i++){
        matriz[i] = []
        for(let j = 0; j < 3; j++){
            matriz[i][j] = parseInt(Math.random() * 10)
        }
    }
}

function multiplicaSoma(){
    let vetor = []
    for(let j = 0; j <3; j++){
        vetor[j] = 0
        for(let i = 0; i < 4; i++){
            matriz[i][j]
            vetor[j] += matriz[i][j]
        }
    }
    for(let i = 0; i < 4; i++){
        for(let j = 0; j < 3; j++){
            matriz[i][j] *= vetor[j]
        }
    }
}

function main(){
    let matriz = []
    leituraDados(matriz)
    multiplicaSoma(matriz)
}