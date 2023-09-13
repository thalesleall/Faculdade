/*
Faça um programa em JavaScript que solicite ao usuário dados de 10 bikes. 
Cada bike deve conter informações como marca, modelo, quadro, aro, ano e preço. 
Após a entrada de dados, o programa deve calcular e exibir ao usuário:

1) a média de preço das bikes

2) qual a bike é mais antiga, deve-se considerar empates

3) quais as bikes são do marca Caloi

4) quantas bikes possuem aro 29

5) qual bike possui maior quadro, pode-se desconsiderar empates 
*/

function bikers(){
    let vetor = [], marca = ["CALOI", "SCOTT", "CANONDALE"]
    let mediaPrecos, sumMedia, cont, caloi = [], aro29, maiorQuadro

    for(let i = 0; i < 10; i++){
        let bicicleta = {
            marca: prompt(`Digite a marca da Bicicleta`).toUpperCase(),
            modelo: prompt(`Digite o modelo da bicicleta`),
            quadro: Number(prompt(`Digite o tamanho do quadro da Bicicleta:`)),
            aro: Number(prompt(`Digite o tamanho do aro da Bicicleta`)),
            ano: Number(prompt(`Digite o ano da Bicicleta`)),
            preco: Number(prompt(`Digite o preço da Bicicleta: `)),
        }

        while(!marca.includes(bicicleta.marca)){
            bicicleta.marca == prompt(`Digite uma marca valida para a Bicicleta`).toUpperCase()
        }
        while(bicicleta.quadro <= 0){
            bicicleta.quadro = Number(prompt(`O quadro não pode ser negativo nem igual a zero, digite um valor valido: `))
        }
        while(bicicleta.aro <= 0){
            bicicleta.aro = Number(prompt(`O aro não pode ser negativo nem igual a zero, digite um valor valido: `))
        }
        while(bicicleta.ano <= 1816 || bicicleta.ano > 2023){ //1817: ano em que a bicicleta foi criada
            bicicleta.ano = Number(prompt(`Nessa data a bicicleta não existia, digite um valor valido: `))
        }
        while(bicicleta.preco <= 0){
            bicicleta.preco = Number(prompt(`O preço não pode ser negativo nem igual a zero, digite um valor valido: `))
        }
        vetor.push(bicicleta)
    }

    let maisAntiga = []
    maisAntiga.push(bicicleta[0])

    for(i = 1; i < 10; i++){
        if(bicicleta[i].ano < maisAntiga[0].ano){
            maisAntiga = []
            maisAntiga.push(bicicleta[i])
        }
        else if(bicicleta[i].ano == maisAntiga[0].ano){
            maisAntiga.push(bicicleta[i])
        }
    }

    for(i = 0; i < 10; i++){
        sumMedia += bicicleta[i].preco
        cont++
    }
    for(i = 0; i < 10; i++){
        if(bicicleta[i].marca.toUpperCase() == marca[0] ){
            caloi.push(bicicleta[i])
        }
    }
    for(i = 0; i < 10; i++){
        if(bicicleta[i].aro == 29){
            aro29++
        }
    }
    for(i = 0; i < 10; i++){
        if(bicicleta[i].quadro > maiorQuadro ){
            maiorQuadro =  bicicleta[i]
        }
    }

    console.log(`A média dos preços é ${sumMedia/cont}`)
    console.log(`A(s) bicicletas mais antigas é(são): ${maisAntiga}`)
    console.log(`As bicicletas com a marca Caloi é ${caloi}`)
    console.log(`A quantidade de bicicletas de aro 29 é ${aro29}`)
    console.log(`A bicicleta com o maior quadro é: ${maiorQuadro}`)
    
}