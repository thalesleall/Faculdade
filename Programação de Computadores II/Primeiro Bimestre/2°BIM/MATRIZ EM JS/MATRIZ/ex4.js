function main(){
    let matriz = []
    let nomes = []
    recebeDados(matriz, nomes)
    medias(matriz, nomes)
}

function recebeDados(matriz, nomes){

    for (let i = 0; i < 15; i++){
        nomes[i] = prompt(`Digite o nome do aluno: `)
        matriz[i] = []
            for(let j = 0; j < 5; j++){
                matriz[i][j] = Number(prompt(`Digite a nota do aluno `))
            }
        }
}

function medias(matriz, nomes){
    let suMedias
    for (let i = 0 ; i<15; i++){
        suMedias = 0
        for(let j = 0; j < 5; j++){
            suMedias += matriz[i][j]
        }
        if(suMedias/5 >= 4 && suMedias/5 <= 6){
            console.log(`O aluno ${nomes[i]}está de exame, pois esta com esta com a media: ${suMedias/5}`)
        }
        else if(suMedias/5 > 6 && suMedias/5 <= 10){
            console.log(`O aluno ${nomes[i]} está com a média ${suMedias/5}, e está aprovado `)
        }
        else if(suMedias/5 < 4 && suMedias/5 >=0){
            console.log(`O aluno ${nomes[i]} está reprovado com a média ${suMedias/5}`)
        }
        else{
            console.log(`Média invalida`)
        }
    }
}

function mediaClasse(matriz){
    let suma = 0
    for(let i=0; i < 15; i++){
        suma += matriz[i]
    }
    console.log(`Media da classe: ${suma/15}`)
}