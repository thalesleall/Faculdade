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
function entradaDados(bikes, marcas){
        let bike = {
            marca: prompt(`Informe marca da bike`).toUpperCase(),
            modelo: prompt(`Informe modelo da bike`),
            aro: Number(prompt(`Informe aro da bike`)),
            quadro: Number(prompt(`Informe quadro da bike`)),
            ano: Number(prompt(`Informe ano da bike`)),
            preco: Number(prompt(`Informe preco da bike`))
        }
        while (!marcas.includes(bike.marca)){
            bike.marca = prompt(`Informe nova marca da bike`).toUpperCase()
        }
        bikes.push(bike)
}

function soma(bikes){
    let soma = 0
    for(let i=0;i< bikes.length ;i++){
        soma = soma + bikes[i].preco
    }
    if( bikes.length == 0){
        console.log(`Não há bikes cadastradas`)
    }
    else {
        console.log(`Média de preços das bikes: ${soma/bikes.length}`)
    }
    return soma
}

function calculaBikeMaisAntiga(bikes){
    if( bikes.length == 0){
        console.log(`Não há bikes cadastradas`)
    }
    let maisAntiga = [] 
    maisAntiga.push(bikes[0])
    for(let i = 1 ; i < bikes.length ; i++){
        if (bikes[i].ano < maisAntiga[0].ano){
            maisAntiga = [] // zera o vetor
            maisAntiga.push(bikes[i])
        }
        else if (bikes[i].ano == maisAntiga[0].ano){
            maisAntiga.push(bikes[i])
        }
    }
    return maisAntiga
}

function bikesCaloi(bikes){
    if(bikes.length == 0){
        console.log(`Não há bikes cadastradas`)
    }
    else{

        let caloi = []
        for(let i = 0;i < bikes.length;i ++){
            if (bikes[i].marca == "CALOI"){
                caloi.push(bikes[i])
            }
        }
        console.log(caloi)
    }
}

function aro29(bikes){
    if(bikes.length == 0){
        console.log(`Não há bikes cadastradas`)
    }
    else{
        let aro29 = 0
        for(let i=0;i<bikes.length;i++){
            if (bikes[i].aro == 29){
                aro29++
            }
        }    
    }
    
    console.log(aro29)
}
function maiorQuadro(){
    let maiorQuadro = bikes[0]
    for(let i=1;i<10;i++){
        if (bikes[i].quadro > maiorQuadro.quadro){
            maiorQuadro = bikes[i]
        }
    }
    
}


function main(){
    let bikes = []
    let marcas = ["CALOI", "SCOTT", "CANNONDALE"]
    let opcao

    do {
        opcao = Number(prompt(`Digite \n1. Cadastre uma bike\n2. Calcula média\n3. Calcula bikes mais antigas\n4. Calcula bikes da marca CALOI\n5. Calcula quantidade de bikes com aro 29\n6. Calcule a bike com o maior Quadro`))
    
        switch(opcao){
            case 1: entradaDados(bikes, marcas)
                    break
            case 2: soma(bikes)
                    break
            case 3: calculaBikeMaisAntiga(bikes)
                    break
            case 4: bikesCaloi(bikes)
                    break
            case 5: aro29(bikes)
                    break
            case 6: maiorQuadro(bikes)
                    break
            case 7: alert(`Progama finalizado`)
                    break
            
            default: alert(`Opção invalida`)
        }

    }while(opcao != 7)
    }