var json = require("./informations.json") 
async function loadJSON (json) {
  const res = await fetch(json);
  return await res.json();
}
loadJSON('../services/contributors.JSON').then(data => {
  console.log(data[0].pedidos);
});

var cardapio = {
  "recheadas": {
    "Calabresa": 42.99,
    "Calabresa c/ Catupiry": 45.99,
    "4 Queijos": 49.99,
    "Portuguesa": 49.99,
    "Marguerita": 46.99
  },
  "bordas": {
    "Calabresa": 39.99,
    "Calabresa c/ Catupiry": 42.99,
    "4 Queijos": 42.99,
    "Portuguesa": 42.99,
    "Marguerita": 42.99
  },
  "doces": {
    "Morango c/ Nutella": 15.00,
    "Banana caramelizada c/ chocolate branco": 15.00
  },
  "bebidas": {
    "Coca-cola 2L": 13.00,
    "Guaraná 1L": 7.50,
    "Coca-cola 600ML": 7.50,
    "Coca-cola lata 350ML": 6.00,
    "Guaraná lata 350ML": 5.50
  }
};

// Função para preencher os selects de itens baseado na categoria selecionada
function popularItens(categoria, selectId) {
  var select = document.getElementById(selectId);
  select.innerHTML = '';

  var option = document.createElement('option');
  option.value = "Não";
  option.text = "Não";
  select.appendChild(option);

  for (var item in cardapio[categoria]) {
    var option = document.createElement('option');
    option.value = item;
    option.text = item;
    select.appendChild(option);
  }
}

// Chamando a função quando a página carrega para popular os selects
window.onload = function() {
  popularItens('recheadas', 'recheadas');
  popularItens('bordas', 'bordas');
  popularItens('doces', 'doces');
  popularItens('bebidas', 'bebidas');
};

function gerarPedido() {
  var recheadaSelecionada = document.getElementById('recheadas').value;
  var quantidadeRecheadas = parseInt(document.getElementById('quantidadeRecheadas').value);
  var valorRecheada = (cardapio['recheadas'][recheadaSelecionada] || 0) * quantidadeRecheadas;
  
  var bordaSelecionada = document.getElementById('bordas').value;
  var quantidadeBordas = parseInt(document.getElementById('quantidadeBordas').value);
  var valorBorda = (cardapio['bordas'][bordaSelecionada] || 0) * quantidadeBordas;
  
  var doceSelecionado = document.getElementById('doces').value;
  var quantidadeDoces = parseInt(document.getElementById('quantidadeDoces').value);
  var valorDoce = (cardapio['doces'][doceSelecionado] || 0) * quantidadeDoces;
  
  var bebidaSelecionada = document.getElementById('bebidas').value;
  var quantidadeBebidas = parseInt(document.getElementById('quantidadeBebidas').value);
  var valorBebida = (cardapio['bebidas'][bebidaSelecionada] || 0) * quantidadeBebidas;

  var precoEntrega = parseFloat(document.getElementById('precoEntrega').value) || 0;

  var valorTotal = valorRecheada + valorBorda + valorDoce + valorBebida + precoEntrega;

  var endereco = document.getElementById('endereco').value;

  var mensagem = 'Pedido de Pizza:\n';
  
  if (recheadaSelecionada != "Não") {
    mensagem += 'Pizza Recheada: ' + recheadaSelecionada + ' - Quantidade: ' + quantidadeRecheadas + ' - Valor: R$' + valorRecheada.toFixed(2) + '\n';
  }
  if (bordaSelecionada != "Não") {
    mensagem += 'Borda: ' + bordaSelecionada + ' - Quantidade: ' + quantidadeBordas + ' - Valor: R$' + valorBorda.toFixed(2) + '\n';
  }
  if (doceSelecionado != "Não") {
    mensagem += 'Doce: ' + doceSelecionado + ' - Quantidade: ' + quantidadeDoces + ' - Valor: R$' + valorDoce.toFixed(2) + '\n';
  }
  if (bebidaSelecionada != "Não") {
    mensagem += 'Bebida: ' + bebidaSelecionada + ' - Quantidade: ' + quantidadeBebidas + ' - Valor: R$' + valorBebida.toFixed(2) + '\n';
  }

  mensagem += 'Preço da Entrega: R$' + precoEntrega.toFixed(2) + '\n';
  mensagem += 'Endereço de Entrega: ' + endereco + '\n';
  mensagem += 'Valor Total: R$' + valorTotal.toFixed(2);

  document.getElementById('pedidoOutput').innerText = mensagem;
}