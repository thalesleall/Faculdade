function somaMatrizes(m, n, soma){
    for(let i = 0; i < 4; i++){
        soma[i] = []
        for(let j = 0; j < 6; j++){
            soma[i][j] = m[i][j] + n[j][i]
        }
    }

}

function preencheMatriz(m, n){
    for (let i = 0; i < 4; i++){
        m[i] = []
        for(let j = 0; j < 6; j++){
            m[i][j] = Math.floor(Math.random() * 50 + 1)
        }
    }
    for(let i = 0; i < 6; i++){
        n[i] = []
        for(let j = 0; j < 4; j++){
            n[i][j] = Math.floor(Math.random() * 50 + 1)
        }
    }
    
}

function main(){
    m = []
    n = []
    soma = []
    preencheMatriz(m, n)
    somaMatrizes(m, n, soma)
    console.log(m)
    console.log(n)
    console.log(soma)
}