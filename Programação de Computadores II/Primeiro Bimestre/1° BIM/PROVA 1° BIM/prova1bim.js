function main(){
    let opcao
    let vetAlbuns = []
    let vetFigurinhas =[]
    
    opcao = Number(prompt(`Gerenciador de album de figurinhas \n1. Cadastrar album \n2. Cadastrar figurinha \n3.Comprar figurinha \n4. Trocar figurinha \n5. Mostrar todas as figurinhas para troca \n6. Mostrar qual figurinha tem maior quantidade \n7. Sair`))
    
    while(opcao != 7){
        switch(opcao){
            case 1:
                cadastraAlbuns(vetAlbuns)
                break;
            case 2:
                cadastraFigurinha(vetAlbuns, vetFigurinhas)
                break;
            case 3:
                compraFigurinha(vetAlbuns, vetFigurinhas)
                break;
            case 4:
                trocaFigurinha(vetAlbuns, vetFigurinhas)
                break;
            case 5:
                mostrarFigurinhasParaTroca(vetFigurinhas)
                break;
            case 6:
                figurinhaComMaiorQuantidade(vetAlbuns, vetFigurinhas)
                break; 
        }
        opcao = Number(prompt(`Gerenciador de album de figurinhas \n1. Cadastrar album \n2. Cadastrar figurinha \n3.Comprar figurinha \n4. Trocar figurinha \n5. Mostrar todas as figurinhas para troca \n6. Mostrar qual figurinha tem maior quantidade \n7. Sair`))
    }
}

let cadastraAlbuns = (vetAlbuns) => {

    for(let i = 0; i < 1; i++){
        let objAlbuns = {
            nome: prompt(`Digite o nome do album`),
            id: Number(prompt(`Digite o id do albúm`)),
            empresa: prompt(`Digite o nome da empresa do album`)
        }
        while(vetAlbuns.some( (p) => p.id == objAlbuns.id) || vetAlbuns.some( (p) => p.nome == objAlbuns.nome)){
            if(vetAlbuns.some( (p) => p.id == objAlbuns.id)){
                objAlbuns.id = Number(prompt(`Esse id ja existe, digite novamente`))
            }
            if(vetAlbuns.some( (p) => p.nome == objAlbuns.nome)){
                objAlbuns.nome = Number(prompt(`Esse nome ja existe, digite novamente`))
            }
            
        }
        vetAlbuns.push(objAlbuns)
    }
}


let cadastraFigurinha = (vetAlbuns, vetFigurinhas) => {
    while (true) {
        let objFigurinhas = {
            numeroFigurinha: Number(prompt(`Digite o numero da figurinha: `)),
            nomeFigurinha: prompt(`Digite o nome da figurinha`),
            timeFigurinha: prompt(`Digite o time da figurinha`),
            qtdeFigurinha: 0,
            confirmaAlbum: prompt(`Informe qual o id do album que deseja cadastrar`)
        };

        if (vetFigurinhas.some((p) => p.numeroFigurinha === objFigurinhas.numeroFigurinha)) {
            alert("Já existe uma figurinha com esse número, digite novamente.");
            continue;
        }

        const albumExistente = vetAlbuns.find((p) => p.id === objFigurinhas.confirmaAlbum);

        if (!albumExistente) {
            alert("Não existe um álbum com esse ID, digite novamente.");
            continue;
        }

        vetFigurinhas.push(objFigurinhas);

        break;
    }
};

let compraFigurinha = (vetAlbuns, vetFigurinhas) => {
    let numeroFigurinha = Number(prompt("Digite o número da figurinha que deseja comprar: "));
    let idAlbum = Number(prompt("Informe o ID do álbum onde deseja adicionar a figurinha: "));

    const albumExistente = vetAlbuns.find((p) => p.id === idAlbum);

    if (!albumExistente) {
        alert("Não existe um álbum com esse ID.");
        return;
    }

    const figurinhaExistente = vetFigurinhas.find(
        (p) => p.numeroFigurinha === numeroFigurinha && p.confirmaAlbum === idAlbum
    );

    if (!figurinhaExistente) {
        alert("A figurinha informada não existe neste álbum.");
        return;
    }

    const quantidadeComprada = Number(prompt("Informe a quantidade de figurinhas que deseja comprar: "));

    if (quantidadeComprada <= 0) {
        alert("A quantidade de figurinhas deve ser maior que zero.");
        return;
    }

    figurinhaExistente.qtdeFigurinha += quantidadeComprada;
    alert(`Figurinha número ${numeroFigurinha} adicionada ao álbum ${albumExistente.nome}. Quantidade total: ${figurinhaExistente.qtdeFigurinha}`);
};

let trocaFigurinha = (vetAlbuns, vetFigurinhas) => {
    let numeroFigurinha1 = Number(prompt("Digite o número da primeira figurinha que deseja trocar: "));
    let idAlbum1 = Number(prompt("Informe o ID do álbum da primeira figurinha: "));
    
    let numeroFigurinha2 = Number(prompt("Digite o número da segunda figurinha que deseja trocar: "));
    let idAlbum2 = Number(prompt("Informe o ID do álbum da segunda figurinha: "));

    // Verificar se os álbuns existem
    const album1 = vetAlbuns.find((album) => album.id === idAlbum1);
    const album2 = vetAlbuns.find((album) => album.id === idAlbum2);

    if (!album1 || !album2) {
        alert("Um dos álbuns informados não existe.");
        return;
    }

    // Verificar se as figurinhas existem nos álbuns correspondentes
    const figurinha1 = vetFigurinhas.find(
        (figurinha) => figurinha.numeroFigurinha === numeroFigurinha1 && figurinha.confirmaAlbum === idAlbum1
    );

    const figurinha2 = vetFigurinhas.find(
        (figurinha) => figurinha.numeroFigurinha === numeroFigurinha2 && figurinha.confirmaAlbum === idAlbum2
    );

    if (!figurinha1 || !figurinha2) {
        alert("Uma das figurinhas informadas não existe no álbum correspondente.");
        return;
    }
    
    // Realizar a troca das figurinhas e atualizar os estoques
    const quantidadeTroca = 1;

    if (figurinha1.qtdeFigurinha >= quantidadeTroca && figurinha2.qtdeFigurinha >= quantidadeTroca) {
        figurinha1.qtdeFigurinha -= quantidadeTroca;
        figurinha2.qtdeFigurinha -= quantidadeTroca;

        alert(`Troca realizada com sucesso! As figurinhas foram trocadas entre os álbuns.`);
    } else {
        alert("Não há figurinhas suficientes em um dos álbuns para realizar a troca.");
    }
};
let mostrarFigurinhasParaTroca = (vetFigurinhas) => {
    console.log("Figurinhas disponíveis para troca (quantidade maior que 1):");
    
    for (const figurinha of vetFigurinhas) {
        if (figurinha.qtdeFigurinha > 1) {
            console.log(`Número da figurinha: ${figurinha.numeroFigurinha}, Álbum: ${figurinha.confirmaAlbum}, Quantidade disponível: ${figurinha.qtdeFigurinha}`);
        }
    }
};

let figurinhaComMaiorQuantidade = (vetAlbuns, vetFigurinhas) => {
    let figurinhaMaisPopular = null;

    for (const figurinha of vetFigurinhas) {
        if (!figurinhaMaisPopular || figurinha.qtdeFigurinha > figurinhaMaisPopular.qtdeFigurinha) {
            figurinhaMaisPopular = figurinha;
        }
    }

    if (figurinhaMaisPopular) {
        const album = vetAlbuns.find((album) => album.id === figurinhaMaisPopular.confirmaAlbum);
        console.log("Figurinha com maior quantidade:");
        console.log(`Nome do álbum: ${album.nome}, Empresa do álbum: ${album.empresa}`);
        console.log(`Nome da figurinha: ${figurinhaMaisPopular.nomeFigurinha}, Time da figurinha: ${figurinhaMaisPopular.timeFigurinha}`);
    } else {
        console.log("Não há figurinhas cadastradas.");
    }
};






