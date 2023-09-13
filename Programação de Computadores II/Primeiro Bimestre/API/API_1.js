// JSON = Java Script Object Notation
/*{
    "chave1": "valor1",
    "chave2": "valor2",
    "chaveN": "valorN"
}*/

//Essa função, já que consome uma API precisa ser ASYNC(ASSINCRONA)

/*
Em resumo, funções síncronas executam de maneira bloqueante, enquanto funções assíncronas permitem que o programa continue 
sua execução e lida com tarefas demoradas de forma mais eficiente, melhorando a responsividade e o desempenho em situações 
que envolvem operações que podem levar tempo para serem concluídas.
*/

let buscarCep = async () => {
    let cep = document.getElementById("cep").value;
    let url = `https://viacep.com.br/ws/${cep}/json/`

    //AWAIT É UMA FUNÇÃO SINCRONA, POIS ENQUANTO A API NÃO RESPSONDER, O CODIGO NAO CONTINUA
    // FETCH É UMA FUNÇÃO NATIVA DO JS QUE FAZ REQUISIÇÕES HTTP
    let resposta = await fetch(url)
    let respostaJSON = await resposta.json();
    
    document.getElementById("logradouro").value = respostaJSON.logradouro;
    document.getElementById("complemento").value = respostaJSON.complemento;
    document.getElementById("bairro").value = respostaJSON.bairro;
    document.getElementById("uf").value = respostaJSON.uf;
    document.getElementById("ddd").value = respostaJSON.ddd;
}
