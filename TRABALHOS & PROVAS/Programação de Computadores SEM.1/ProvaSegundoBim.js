function prova(){
        let i = 0
        let titulo = []
        let descricao = []
        let usuarios = []
        let qtdeLikes = []


        for(i = 0; i < 10; i++){
            let usuario
            let qtdeLike = 0
            titulo[i] = prompt(`Digite o titulo do ${i + 1}° post`)
            descricao[i] = prompt(`Digite a descrição do ${i + 1}° post`)
            usuario = prompt(`Digite o nome do usuario do ${i + 1}° post`)
            
            while(usuarios.includes(usuario)){
                usuario = prompt(`Usuario ja digitado, digite um novo`)
            }
            usuarios[i] = usuario
            
            qtdeLike = Number(prompt(`Digite a quantidade de likes do ${i + 1}° post`))
            
            while(qtdeLike < 0){
                qtdeLike = Number(prompt(`Quantidade de likes negativa, digite novamente`))
            }

            qtdeLikes[i] = qtdeLike
        }

        for(i = 0; i < 5; i++){
            let usuario
            let post
            let quantidade
            let maismenos
            post = 0

            usuario = prompt(`Digite o nome do usuario para fazer a mudança no ${i + 1}° post`)
            post = usuarios.indexOf(usuario)
            if(usuarios.includes(usuario) == false){
                alert(`Usuario não encontrado, mudança cancelada`)
                continue;
            }
            else{
                for(i = post; i < 5; i++){
                    let qtdeLike = 0
                    maismenos = prompt(`A quantidade de likes irá aumentar ou diminuir? digite aumentar ou diminuir`)
                    
                        if(maismenos == "aumentar"){
                            quantidade = Number(prompt(`Digite a quantidade`))
                            qtdeLikes[i] = qtdeLikes[i] + quantidade
                        }
                    
                        else if(maismenos == "diminuir"){
                            quantidade = Number(prompt(`Digite a quantidade`))
                                while(qtdeLikes[i] - quantidade < 0){
                                    quantidade = Number(prompt(`A quatidade ficou negativa, digite outro valor`))
                                }
                            qtdeLikes[i] = qtdeLikes[i] - quantidade
                    }
                    
                }
            }
        }

        let maior = qtdeLikes [0]
        let menor = qtdeLikes [0]

        for(let i = 0; i < 10; i++){
            total = total + vendas[i]
            if (qtdeLikes[i] > maior){
                maior = qtdeLikes[i]
            }
            else if ( qtdeLikes[i] < menor){
                menor = qtdeLikes[i]
            }
        }

        console.log(`O post com maior quantidade de like é o ${titulo[comissoes.indexOf(maior)]} \n com a descrição${descricao[comissoes.indexOf(maior)]}  e numero de like igual a: ${maior} `)
        console.log(`O post com menor quantidade de like é o ${titulo[comissoes.indexOf(menor)]} \n com a descrição${descricao[comissoes.indexOf(menor)]}  e numero de like igual a: ${menor} `)
        
}