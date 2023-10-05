// Faça um matriz de bimestre x notas de alunos 

function principal (){
    let vetor = []
    let matriz = []
    leituraDados(vetor, matriz)
    mediaBimestre(matriz)
    calculaMedia(vetor, matriz)
}

function leituraDados(vetor, matriz){
    for(let i = 0; i < 3; i++){
        vetor.push(prompt('Informe o nome do aluno'))
        matriz[i] = []
        for (let j=1 ;j<=4;j++) {
            matriz[i][j] = Number(prompt(`Informe a nota ${j+1}`))
        }
    }
}

function calculaMedia(vetor, matriz){
    for(let i = 0; i < 3; i++){
        let soma = 0
        for(let j = 0; j < 4; j++){
            soma += matriz[i][j]

        }
        console.log(`O aluno ${vetor[i]} teve media ${soma/4}`)
    }
}

function mediaBimestre(matriz){
    for(let j = 0; j < 4; j++){
        let soma = 0
        for(let i = 0; i<3; i++){
            soma += matriz[j][i]
        }
        console.log(`A media do ${i + 1}° bimestre é igual a ${soma/3}`)
    }

}