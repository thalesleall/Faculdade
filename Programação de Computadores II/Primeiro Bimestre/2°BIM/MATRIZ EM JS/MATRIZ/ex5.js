function main(){
    let matriz = []
    let meses = ['Janeiro', 'Fevereiro', 'Março', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro']
    recebeDados(matriz, meses)
    vendasMes(matriz, meses)
    vendaSemanal(matriz, meses)
}

function recebeDados(matriz, meses){
    for(let i = 0; i < 12; i++){
        matriz[i] = []
            for(let j = 0; j < 4; j++){
            matriz[i][j] = Number(prompt(`Digite aqui o valor de venda da ${j+1}° semana de ${meses[i]}`))
            }
    }
}

function vendasMes(matriz, meses){
    let vendidoMes = 0
    for(let i = 0; i < 12; i++){
        vendidoMes = 0
        for(let j = 0; j < 4; j++){
            vendidoMes += matriz[i][j]
        }
        console.log(`O total vendido no mês de ${meses[i]} é igual a ${vendidoMes}`)
        
    }
}

function vendaSemanal(matriz, meses){
    for (let i=0 ; i<12 ; i++) {
        for (let j=0 ; j<4 ; j++) {
            console.log(`Valor de venda da ${j+1}° semana do mês do ${meses[i]} é igual a ${matriz[i][j]}`)
        }
    }
}

function vendaAno(matriz, meses){
    let vendaAno = 0
    for(let i = 0; i < 12; i++){
        for(let j  = 0; j < 4; j++){
            vendaAno += matriz[i][j]
        }
    }
    console.log(`O total das vendas desse ano é igual á: R$ ${vendaAno}`)
}