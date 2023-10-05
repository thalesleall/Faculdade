/* FAÇA UM SISTEMA DE VOTAÇÃO COM 
    ENTRADA DE 10 CANDIDATOS 
        >CODIGO
        >PARTIDO
            >PT
            >PL
            >PSDB
            >PDT
        >NOME
        >QTDEVOTOS

    E ASSIM MOSTRE:
    1) CANDIDATO MAIS VOTADO (NOME E PARTIDO)
    2) SOLICITA UM PARTIIDO, INFORME CANDITADO MAIS VOTADO DO PARTIDO   */
    
function urna() {

    let vetor = []; 
    let partidos = ["PT", "PL", "PSDB", "PDT"]
    let maiorVoto, maiorNome, maiorPartido, solicitaPartido, maisVotadoPartido = 0, nomeMaisVotadoPartido = ""
        for(let i = 0; i < 10; i++){        
            let candidato = {
                codigo: Number(prompt(`Digite o código de canditatos: `)),
                partido: prompt(`Digite o partido: `).toUpperCase(),

                nome: prompt(`Digite o nome do candidato: `),
                qtdeVotos: Number(prompt(`Digite a quantidade de votos: `))
            }

            while(!partidos.includes(candidato.partido) || candidato.qtdeVotos < 0){
                if(candidato.qtdeVotos < 0){
                    candidato.qtdeVotos = prompt(`Quantidade de votos negativas, digite novamente`)
                }
                if(!partidos.includes(candidato.partido)){
                    candidato.partido = prompt(`Partido invalido digite um partido entre esses:\nPT\nPL\nPSDB\nPDT`).toUpperCase()
                }
                
            }
            vetor.push(candidato)
        }

        //candidato mais votado 

        for(i = 0; i < 10; i++){
            if(maiorVoto > candidato[i].qtdeVotos ){
                maiorVoto = candidato[i].qtdeVotos 
                maiorNome = candidato[i].nome
                maiorPartido = candidato[i].partido
            }
        }
        alert(`Candidato com maior numero de votos:\nNome: ${maiorNome}\nNumero de votos: ${maiorVoto}\nPartido: ${maiorPartido}`)
        
        solicitaPartido = prompt(`Digite um partido para saber o candidato com maior numero de votos: `),toUpperCase()
        while(!partidos.includes(solicitaPartido)){
            solicitaPartido = prompt(`Partido invalido digite um partido entre esses:\nPT\nPL\nPSDB\nPDT`).toUpperCase()
        }

        for(i = 0; i < 10; i++){
            if(candidato[i].partido == partidoUsuario){
                if(candidatos[i].qtdeVotos > maisVotadoPartido){
                    maisVotadoPartido = canditados[i].qtdeVotos
                    nomeMaisVotadoPartido = candidatos[i].nome
                }
            }        
        }
}