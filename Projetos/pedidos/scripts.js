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
var troco = document.getElementById("troco")
let meiaPizzaIf = false;
let pizzasSalgadas = "";
let pizzasDoces = "";
let bebidas = "";
let informacoes = "";

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
