function multiplicarMatriz(m1, m2){
    let m3 = []
    for(let i = 0; i < 3; i++){
        m3[i] = []
        for(let j = 0; j < 3; j++){
            m3[i][j] = 0
            for(let k = 0; k < 3; k++){
                m3[i][j] += m1[i][k] * m2[k][j]
            }
        }
    }
    return m3

}

function preencheMatriz(m1, m2){
    for(let i = 0; i < 3; i++){
        m1[i] = []
        for(let j = 0; j < 3; j++){
            m[i][j] = (Math.random() * 50).toFixed(2)
        }
    }
    for(let i = 0; i < 3; i++){
        m2[i] = []
        for(let j = 0; j < 3; j++){
            m[i][j] = prompt(`Digite um valor para a matriz 2: `)
        }
    }
}
function main(){
    m1 =[]
    m2 =[]
    preencheMatriz(m1, m2)
    console.log(multiplicarMatriz(m1, m2))
}