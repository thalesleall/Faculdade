/* Faça um programa em JS que guarde em um vetor dados de 5 partidos políticos: código, nome, sigla, presidente, nro de políticos

Em seguida, guarde em um vetor dados de 5 políticos: código do partido, nome do político, qtde de votos na eleição atual (inicie com 0) e cargo que ocupa

Não é possível crias dois partidos com o mesmo código

Não é possível cadastrar um político de um partido que não exista

Ao final, inicie uma votação, faça o cadastro de 10 votos, e atualize a qtde de votos do político. Não é possível votar em candidato que não exista, votar em um candidato de um partido errado.

Finalmente, mostrar os dados do político que teve mais votos. */


    let main = () => {
        let vetPartidos = []
        let vetPoliticos = []

        cadastraPartidos(vetPartidos)
        cadastraPolitico(vetPartidos, vetPoliticos )
        votacao(vetPartidos, vetPoliticos)

    }

    let cadastraPartidos = (vetPartidos) => {
        for(let i = 0; i < 2; i++){
            let objPartidos = {
                codigoPartido: Number(prompt(`Digite o codigo do partido`)),
                nomePartido: prompt(`Digite o nome do partido`).toUpperCase(),
                siglaPartido: prompt(`Digite a sigla do partido`).toUpperCase(),
                presidentePartido: prompt(`Digite quem é o presidente do partido`).toUpperCase(),
                qtdePoliticosPartido: Number(prompt(`Digite a quantidade de politicos do partido`))
            }
            while(vetPartidos.some( (p) => p.codigoPartido == objPartidos.codigoPartido)){
                objPartidos.codigoPartido = Number(prompt(`Codigo de partido já existente\nDigite o codigo do partido novamente`))
            }
            vetPartidos.push(objPartidos)
        }    
    }

    let cadastraPolitico = (vetPartidos, vetPoliticos) => {
        for(let i = 0; i < 2; i++){
            let objPoliticos = {
                codigoDoPartidoDoPolitico: Number(prompt(`Digite o codigo do partido do politico`)),
                nomePolitico: prompt(`Digite o nome do politico`).toUpperCase(),
                qtdeVotos: 0,
                cargoPolitico: prompt(`Digite o cargo do politico`).toUpperCase()
            }
        }
        while(!vetPoliticos.some (  (j) => j.codigoDoPartidoDoPolitico == objPoliticos.codigoDoPartidoDoPolitico)){
            objPoliticos.codigoDoPartidoDoPolitico = Number(prompt(`O partido não existe ou o codigo informado está incorreto, digite novamente.`))
        }
    }

    let votacao = (vetPartidos, vetPoliticos) => {
        for(i = 0; i < 10; i++){
            let partido = promt(`Digite a sigla do partido do candidato`).toUpperCase()
            while(!vetPartidos.some( (p) => p.partido == objPartidos.siglaPartido)){
                partido = prompt(`Partido não encontrado, digite novamente`).toUpperCase()
            }
            let candidato = promt(`Digite o nome do candidato`).toUpperCase()
            while(!vetPoliticos.some( (p) => p.candidato == objPoliticos.nomePolitico)){
                partido = prompt(`Candidato não encontrado, digite novamente`).toUpperCase()
            }

            if(vetPoliticos.find( (p) => p.partido.includes(objPoliticos == candidato))){
                console.log(`Candidato e partido se conhecidem`)
                objPoliticos[i].qtdeVotos++
            }
            
        }
    }