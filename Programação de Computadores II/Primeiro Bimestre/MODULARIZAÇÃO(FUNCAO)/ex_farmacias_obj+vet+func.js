// Faça um programa em JS que guarde em um vetor dados de 5  farmacias: código, Nome e endereço 
// Em seguida, guarde em um vetor dados de 10 remédios: código da farmácia, nome do remédio, qtde em estoque e preço
//  Não é possível crias duas farmácias com o mesmo código
//  Não é possível cadastrar um remédio de uma farmácia que não exista
// Ao final, efetive a compra de 5 remédios, e atualize o estoque

function principal() {
    let farmacias = []
    let remedios = []

    do{
        let opcao = Number(prompt(`Digite 1 para cadastrar farmacia, 2 para cadastrar remedio, 3 para comprar remedio e 4 para sair`))
        switch(opcao) {
            case 1: cadastraFarmacia(farmacias)
                    break
            case 2: cadastraRemedio(remedios, farmacias)
                    break
            case 3: comprarRemedio(remedios)
                    break
            case 4: console.log(`Obrigado por utilizar nosso programa`)
                    break
            default: console.log(`Opção inválida`)
        }
    }
    while(opcao!=4)
}

let cadastraFarmacia = (farmacias) => {
    for(let i=0; i<5; i++) {
        let objeto = {
            codigo: Number(prompt(`Digite o codigo da farmacia`)),
            nome: prompt(`Digite o nome da farmacia`),
            endereco: prompt(`Digite o endereço da farmacia`)
        }
        let vetAux = farmacias.filter(objeto => objeto.codigo == obj.codigo)
        if(vetAux.length == 0) { // não existe outra farmacia com este codigo
            farmacias.push(objeto)
            console.log(`Farmacia cadastrada com sucesso`)
        }
        else { // já existe outra farmacia com este codigo
            console.log(`Farmacia já cadastrada`)
            do {
                objeto.codigo = Number(prompt(`Digite o codigo da farmacia`))
                vetAux = farmacias.filter((objeto) => objeto.codigo == obj.codigo)
            }
            while(farmacias.filter((objeto) => objeto.codigo == obj.codigo).length != 0)
        }
    }
}

let cadastraRemedio = (remedios, farmacias) => {
    for(let i=0; i<10; i++) {
        let objeto = {
            codigo: Number(prompt(`Digite o codigo do remedio`)),
            nome: prompt(`Digite o nome do remedio`),
            qtde: Number(prompt(`Digite a quantidade do remedio`)),
            preco: Number(prompt(`Digite o preço do remedio`)),
            codFarmacia: Number(prompt(`Digite o codigo da farmacia`))
        }
        let vetAux = farmacias.filter((objeto) => objeto.codigo == obj.codFarmacia)
        if(vetAux.length != 0) { // existe uma farmacia com este codigo
            remedios.push(objeto)
            console.log(`Remedio cadastrado com sucesso`)
        }
        else { // não existe uma farmacia com este codigo
            console.log(`Farmacia não cadastrada`)
        }
    }
}

let comprarRemedio = (remedios) => {
    let codigo = Number(prompt(`Digite o codigo do remedio`))
    let qtde = Number(prompt(`Digite a quantidade do remedio`))
    let vetAux = remedios.filter((objeto) => objeto.codigo == codigo)
    if(vetAux.length != 0) { // existe um remedio com este codigo
        if(vetAux[0].qtde >= qtde) { // tem estoque suficiente
            vetAux[0].qtde = vetAux[0].qtde - qtde
            console.log(`Compra efetuada com sucesso`)
        }
        else { // não tem estoque suficiente
            console.log(`Não tem estoque suficiente`)
        }
    }
    else { // não existe um remedio com este codigo
        console.log(`Remedio não cadastrado`)
    }
}

