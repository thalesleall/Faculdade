const checkboxMeiaPizza = document.getElementById("meia-pizza-check");
const selectMeiaPizza = document.getElementById("meia-pizza");
const selectMassa = document.getElementById("massas");
const textArea = document.getElementById("textarea");
const selectDoce = document.getElementById("pizza-doce");
const selectPizza = document.getElementById("sabores");
const selectBebidas = document.getElementById("bebidas");
const inputEndereco = document.getElementById("endereco")
const inputEntrega = document.getElementById("precoEntrega")
var selectPagamento = document.getElementById("pagamento")
const xmlFilePath = './cardapio.xml';
var troco = document.getElementById("troco")
let meiaPizzaIf = false;
let pizzasSalgadas = "";
let pizzasDoces = "";
let bebidas = "";
let informacoes = "";
let jsonResult;


function setHorario(){
  const dataAtual = new Date();
  const dia = dataAtual.getDate();
  const mes = dataAtual.getMonth() + 1;
  const ano = dataAtual.getFullYear();
  let hora = dataAtual.getHours();
  let minutos = dataAtual.getMinutes();

  hora = hora <= 9 ? `0${hora}` : hora;
  minutos = minutos <= 9 ? `0${minutos}` : minutos;
  
  const data = `${dia}/${mes}/${ano}`;
  const horario = `${hora}:${minutos}`;
  return `${data} ${horario}`;
}

function habilita() {
  if (checkboxMeiaPizza.checked) {
    meiaPizzaIf = true;
    selectMeiaPizza.removeAttribute("disabled");
  } else {
    meiaPizzaIf = false;
    selectMeiaPizza.setAttribute("disabled", "disabled");
  }
}

habilita();
checkboxMeiaPizza.addEventListener("change", habilita);

function formatPedido() {
  return `------------Pedido------------\n${pizzasSalgadas}${pizzasDoces}${bebidas}${informacoes}`;
}

function addPizza() {
  let pizza = `Pizza ${selectMassa.value.toUpperCase()}:\n`;
  if (meiaPizzaIf) {
    pizza += `   1/2x ${selectPizza.value} 1/2x ${selectMeiaPizza.value}\n`;
  } else {
    pizza += `   1x ${selectPizza.value}\n`;
  }
  pizzasSalgadas += pizza;
  textArea.value = formatPedido();
}

function addPizzaDoce() {
  let pizzaDoce = `\nPizza DOCE: \n   1x ${selectDoce.value}\n`;
  pizzasDoces += pizzaDoce;
  textArea.value = formatPedido();
}

function addBebida() {
  let bebida = `\nBEBIDA\n   1x ${selectBebidas.value}\n`;
  bebidas += bebida;
  textArea.value = formatPedido();
}

function dinheiroPGTO(){
  if(selectPagamento.value == "Dinheiro"){
    troco.removeAttribute("style", "display: none")
  }
  else{
    troco.setAttribute("style", "display: none")
  }
}

document.addEventListener('selectionchange', dinheiroPGTO)

function finalizarPedido(){
  if(selectPagamento.value == "Dinheiro"){
    informacoes = `\nENDEREÇO\n ${endereco.value}\nENTREGA\n R$${precoEntrega.value}\nFORMA PAGAMENTO\n ${pagamento.value}\n Troco para: ${troco.value}`
  }
  else{
    informacoes = `\nENDEREÇO\n ${endereco.value}\nENTREGA\n R$${precoEntrega.value}\nFORMA PAGAMENTO\n ${pagamento.value}`
  }
  textArea.value = formatPedido();
}

// Declara a variável global


document.addEventListener('DOMContentLoaded', function () {
    // Função chamada quando a página é carregada
    async function onPageLoad() {
        console.log('Página carregada');
        // Chame sua função aqui
        jsonResult = await fetchXmlAndConvertToJson('./cardapio.xml');
        console.log(jsonResult);  // Exibe o JSON resultante
    }

    // Função para buscar o XML e converter para JSON
    async function fetchXmlAndConvertToJson(filePath) {
        try {
            const response = await fetch(filePath);
            const xmlText = await response.text();
            const parser = new DOMParser();
            const xmlDoc = parser.parseFromString(xmlText, 'application/xml');

            const json = xmlToJson(xmlDoc);
            return json;  // Retorna o JSON resultante
        } catch (err) {
            console.error(err);
            return null;  // Em caso de erro, retorna null
        }
    }

    // Função para converter XML DOM para JSON
    function xmlToJson(xml) {
        let obj = {};
        if (xml.nodeType === 1) { // Elemento
            if (xml.attributes.length > 0) {
                obj["@attributes"] = {};
                for (let j = 0; j < xml.attributes.length; j++) {
                    const attribute = xml.attributes.item(j);
                    obj["@attributes"][attribute.nodeName] = attribute.nodeValue;
                }
            }
        } else if (xml.nodeType === 3) { // Texto
            obj = xml.nodeValue;
        }

        if (xml.hasChildNodes()) {
            for (let i = 0; i < xml.childNodes.length; i++) {
                const item = xml.childNodes.item(i);
                const nodeName = item.nodeName;
                if (typeof (obj[nodeName]) === "undefined") {
                    obj[nodeName] = xmlToJson(item);
                } else {
                    if (typeof (obj[nodeName].push) === "undefined") {
                        const old = obj[nodeName];
                        obj[nodeName] = [];
                        obj[nodeName].push(old);
                    }
                    obj[nodeName].push(xmlToJson(item));
                }
            }
        }
        return obj;
    }

    onPageLoad();
});



