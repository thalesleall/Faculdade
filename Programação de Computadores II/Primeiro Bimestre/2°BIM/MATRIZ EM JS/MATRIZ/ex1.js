function main(){
    let matriz = []
    preencheMatriz(matriz)
}

function preencheMatriz(matriz){
    
    for(let i = 0; i < 3; i++){
        matriz[i] = []
        for (let j=0 ;j<5; j++) {
            matriz[i][j] = Number(prompt(`Digite um numero`))
        }
    }
    console.log(matriz)
}

function calcula1520(matriz){
    let cont = 0
    for(i = 0; i < 3; i++){
        for(j = 0; j < 5; j++){
            if(matriz[i][j] >= 15 && matriz[i][j] <= 20){
                cont++
            }
        }
    }
}