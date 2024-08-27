<<<<<<< HEAD
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



=======
let checkboxMeiaPizza = document.getElementById("meia-pizza-check");
let selectMeiaPizza = document.getElementById("meia-pizza");
let selectMassa = document.getElementById("massas")
let textArea = document.getElementById("texttarea")
let selectDoce = document.getElementById("pizza-doce")
let selectPizza = document.getElementById("sabores")
let selectBebidas = document.getElementById("bebidas")
let meiaPizzaIf = false
let pizzasSalgadas = ""
let pizzasDoces = ""
let bebidas = ""

function setHorario(){
  let dataAtual = new Date();
  let dia = dataAtual.getDate()
  let mes = (dataAtual.getMonth()) +1
  let ano = dataAtual.getFullYear()
  let hora = dataAtual.getHours()
  if(hora <= 9){
    hora = `0` +dataAtual.getHours()
  }
  let minutos = dataAtual.getMinutes()
  if(minutos <= 9){
    minutos = `0` +dataAtual.getMinutes()
  }
  
  let data = `${dia}/${mes}/${ano}`
  let horario = `${hora}:${minutos}`
  

  return data + " " + horario
}
function habilita() {
  if (checkboxMeiaPizza.checked) {
    meiaPizzaIf = true
    selectMeiaPizza.removeAttribute("disabled");
  } 
  else if (!checkboxMeiaPizza.checked) {
    meiaPizzaIf = false
    selectMeiaPizza.setAttribute("disabled", "disabled");
  }
}
habilita();
checkboxMeiaPizza.addEventListener("change", habilita);
function addPizza(event){
  event.preventDefault();
  pizzasSalgadas += `\nPizza ${selectMassa.value}:\n`
  if(meiaPizzaIf){
    pizzasSalgadas += `   1/2x ${selectPizza.value} 1/2x ${selectMeiaPizza.value}\n`
  }
  else{
    pizzasSalgadas += `   1x ${selectPizza.value}\n`
  }
  textArea.value = `------------Pedido------------${pizzasSalgadas}\n${pizzasDoces}${bebidas}`
}
function addPizzaDoce(event){
  event.preventDefault();
  pizzasDoces += `\nPizza DOCE: \n   1x ${selectDoce.value}`
  textArea.value = `------------Pedido------------${pizzasSalgadas}${pizzasDoces}${bebidas}`
}

function addBebida(event){
  event.preventDefault();
  bebidas += `\nBEBIDA\n   1x ${selectBebidas.value}`
  textArea.value = `------------Pedido------------${pizzasSalgadas}${pizzasDoces}${bebidas}`
}

const CONFIGURATION = {
  "ctaTitle": "Entrega",
  "mapOptions": {
    "center": {
      "lat": 37.4221,
      "lng": -122.0841
    },
    "fullscreenControl": true,
    "mapTypeControl": false,
    "streetViewControl": true,
    "zoom": 11,
    "zoomControl": true,
    "maxZoom": 22,
    "mapId": ""
  },
  "mapsApiKey": "AIzaSyBaKFkmIz3lxbzzhMbV7w0-_s_8I1wLEqU",
  "capabilities": {
    "addressAutocompleteControl": true,
    "mapDisplayControl": false,
    "ctaControl": false
  }
};

const SHORT_NAME_ADDRESS_COMPONENT_TYPES =
  new Set(['street_number', 'administrative_area_level_1', 'postal_code']);

const ADDRESS_COMPONENT_TYPES_IN_FORM = [
  'location',
  'locality',
  'administrative_area_level_1',
  'postal_code',
  'country',
];

function getFormInputElement(componentType) {
  return document.getElementById(`${componentType}-input`);
}

function fillInAddress(place) {
  function getComponentName(componentType) {
    for (const component of place.address_components || []) {
      if (component.types[0] === componentType) {
        return SHORT_NAME_ADDRESS_COMPONENT_TYPES.has(componentType) ?
          component.short_name :
          component.long_name;
      }
    }
    return '';
  }

  function getComponentText(componentType) {
    return (componentType === 'location') ?
      `${getComponentName('street_number')} ${getComponentName('route')}` :
      getComponentName(componentType);
  }

  for (const componentType of ADDRESS_COMPONENT_TYPES_IN_FORM) {
    getFormInputElement(componentType).value = getComponentText(componentType);
  }
}

async function initMap() {
  const {
    Autocomplete
  } = google.maps.places;

  const autocomplete = new Autocomplete(getFormInputElement('location'), {
    fields: ['address_components', 'geometry', 'name'],
    types: ['address'],
  });

  autocomplete.addListener('place_changed', () => {
    const place = autocomplete.getPlace();
    if (!place.geometry) {
      // User entered the name of a Place that was not suggested and
      // pressed the Enter key, or the Place Details request failed.
      window.alert(`No details available for input: '${place.name}'`);
      return;
    }
    fillInAddress(place);
  });
}

async function getDistance(enderecoDeEntrega, event) {
  if (event) {
    event.preventDefault();
  }
  // Verifique se o endereço de entrega foi fornecido
  if (!endEntrega) {
    console.error("Endereço de entrega não fornecido.");
    return;
  }

  // Função para transformar o endereço em URL
  function transformarParaURL(endEntrega) {
    return endEntrega.split(' ').join('+');
  }

  // Função assíncrona para buscar os dados da API do Google Geocoding
  async function buscarDados(endEntrega) {
    let url = `https://maps.googleapis.com/maps/api/geocode/json?address=${transformarParaURL(endEntrega)}&key=AIzaSyBaKFkmIz3lxbzzhMbV7w0-_s_8I1wLEqU`;

    try {
      const response = await fetch(url);
      const data = await response.json();
      return data;
    } catch (error) {
      console.error("Erro:", error);
      return null;
    }
  }

  // Função assíncrona para consultar a API e obter latitude e longitude
  async function consultarAPI(endEntrega) {
    const resposta = await buscarDados(endEntrega);
    if (resposta) {
      const lat = resposta.results[0].geometry.location.lat;
      const lng = resposta.results[0].geometry.location.lng;
      return { lat, lng };
    } else {
      console.log("Não foi possível obter a resposta.");
      return null; // Retorne null ou outra coisa, caso a função não tenha sucesso
    }
  }

  // Chamando a função assíncrona e manipulando o resultado
  consultarAPI(endEntrega).then(resultado => {
    if (resultado) {
      const { lat, lng } = resultado; // Desestruturando o objeto para obter lat e lng
      console.log("Latitude:", lat);
      console.log("Longitude:", lng);

      // Agora você pode armazenar esses valores em variáveis separadas
      var latitude = lat;
      var longitude = lng;

      // Faça o que for necessário com latitude e longitude
    } else {
      console.log("Não foi possível obter os dados de localização.");
    }
  });
}
getDistance(enderecoDeEntrega);

>>>>>>> bd7decde642d8b1e9e5ef74133ae25fd744755ba
