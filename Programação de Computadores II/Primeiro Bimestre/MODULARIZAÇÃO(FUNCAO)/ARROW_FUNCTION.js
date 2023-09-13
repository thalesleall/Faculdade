//ARROW FUNCTION

/*
vetor. filter -> retorna mais que um > retorna um vetor 
vetor.find -> retorna o primeiro que encontrar > retorna apenas 1 unidade
vetor.some -> retorna true ou false > caso haja no vetor retorna true; caso nao tenha retorna false 
*/

/*
Faça um programa em JS que guarde em um vetor dados de 5  farmacias: código, Nome e endereço 

Em seguida, guarde em um vetor dados de 10 remédios: código da farmácia, nome do remédio, qtde em estoque e preço

 Não é possível crias duas farmácias com o mesmo código

 Não é possível cadastrar um remédio de uma farmácia que não exista

Ao final, efetive a compra de 5 remédios, e atualize o estoque
*/

let principal = () => {
    let vetFarmacias = []
    let vetRemedios = []
    cadastraFarmacias(vetFarmacias)
    cadastraRemedios(vetRemedios, vetFarmacias)
    vendeRemedios(vetRemedios)
}

let cadastraFarmacias = (vetFarmacias) => {
    for(let i = 0; i< 5; i++){
        let objFarmacia = {
            codigo: Number(prompt(`Informe o codigo da farmacia`)),
            nome: prompt(`Informe o nome da farmácia`),
            endereco: prompt(`Informe o endereço da farmácia`)
        }
        while(vetFarmacias.some( (farm) => farm.codigo == objFarmacia.codigo)){
            alert(`Codigo já existente`)
            objFarmacia.codigo = Number(prompt(`Informe o codigo novamente da farmácia`))
        }
        vetFarmacias.push(objFarmacia)
    }
}

let cadastraRemedios = (vetRemedios, vetFarmacias) => {
    for(let i = 0; i < 5; i++){
        let objRemedios = {
            codigoFarm: Number(prompt(`Informe o codigo da farmácia`)),
            nome: prompt(`Informe o nome do remedio`),
            qtde: Number(`Informe a quantidade de remedios`),
            preco: Number(`Informe o preco do remedio`)
        }
        while(!vetFarmacias.some( (farm) => farm.codigoFarm == objRemedios.codigoFarm)){
            alert(`Farmacia não existente`)
            objRem.codigoFarm = Number(prompt(`Informe novo código da farmácia`))
        }

        vetRemedios.push(objRemedios)

    }
}

let vendeRemedios = (vetRemedios) => {
        let codFarmacia = Number(prompt(`Informe o código da farmacia do remedio`))
        let nomeRemedio = prompt(`Informe o nome do rémedio`)
        let qtdeVendida = Number(prompt(`Informe a quantidade vendida`))
        let achou = false 
        for(let i = o; i < vetRemedios.lenght; i++){
            if(vetRemedios[i].codigoFarmacia == codFarmacia && vetRemedios[i].nome == nomeRemedio){
                achou = true 
                if(vetRemedios[i].qtde >= qtdeVendida){
                    vetRemedios[i].qtde = vetRemedios[i].qtde - qtdeVendida
                    alert(`Venda efetuada com sucesso`)
                }
                else{
                    alert(`Estoque insuficiente`)
                }
            }
        }

        if(!achou){
            alert(`Remedio/Farmacia não existe`)
        }
}
 



