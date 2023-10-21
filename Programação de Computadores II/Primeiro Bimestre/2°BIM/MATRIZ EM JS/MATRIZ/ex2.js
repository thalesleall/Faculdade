function main(){
    matriz = []
    preencheMatriz(matriz)
    calcula1220(matriz)
    mediapar(matriz)
}

function preencheMatriz(matriz){
    for(let i = 0; i < 2; i++){
        matriz[i] = []
        for(let j = 0; j < 4; j++){
            matriz[i][j] = Number(prompt(`Digite um numero inteiro: `))
        }
    }
}

function calcula1220(matriz){
    for(let i = 0; i < 2; i++){
        let cont = 0
        for(let j = 0; j < 4; j++){
            if(matriz[i][j] >= 12 && matriz[i][j] <= 20){
                cont++
            }
        }
        console.log(`A quantidade de elementos entre 12 e 20 na ${i+1}° linha é igual a ${cont}`)
    }
}

function mediapar(matriz){
    let sumpar = 0
    let cont = 0
    for(i = 0; i < 2; i++){
        for(j = 0; j < 4; j++){
            if(matriz[i][j] % 2 == 0){
                sumpar += matriz[i][j]
                cont++
            }
        }
    }
    console.log(`Media dos numeros pares: ${sumpar/cont}`)
}