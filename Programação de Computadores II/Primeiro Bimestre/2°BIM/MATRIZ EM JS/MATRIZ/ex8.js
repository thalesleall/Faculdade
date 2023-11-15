function getRndInteger(min, max) {
    return Math.floor(Math.random() * (max - min + 1) ) + min;
  }

soma(matriz1, matriz2, soma){
    for(let i = 0; i < 3; i++){
        matriz1[i] = []
        matriz2[i] = []
        for(let j = 0; j < 8; j++){
           matriz1[i][j] = getRndInteger(1, 50)
           matriz2[i][j] = getRndInteger(1, 50)
        }
    }
}
matriz(matriz1, matriz2){
    for(let i = 0; i < 3; i++){
        matriz1[i] = []
        matriz2[i] = []
        for(let j = 0; j < 8; j++){
           matriz1[i][j] = getRndInteger(1, 50)
           matriz2[i][j] = getRndInteger(1, 50)
        }
    }
}

function principal(){
    matriz1 =[]
    matriz2 =[]
    soma = []
    diferenca = []
    matriz(matriz1, matriz2)
    soma(matriz1, matriz2, soma)
}