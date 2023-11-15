function main(){
    str = "Minecraft é foda"
    ex1(str)
    ex2()
    ex3()
    ex4()
    ex5()
}
function ex1(str){
    let i = 0
    while (str[i] != undefined){
        i++
    }
    console.log(i)
}

function ex2(){
    nome = prompt("Digite um nome: ")
    if (nome.charAt(0) == a || nome.charAt(0) == A){
        console.log(nome)
    }
}

function ex3(){
    nome = prompt("Digite um nome: ")
    if(nome.length >= 4){
        console.log(nome.(0, 4))
    }
    else{
        console.log("Esse nome é menor que 4 letras")
    }
}

function ex4(){
    nome = prompt("Digite um nome: ")
    return nome.length
}

function ex5(){
    nome = prompt("DIgite o nome: ")
    sexo = prompt("Digite o sexo: ")
    idade = prompt("DIgite a idade: ")

    if(sexo == 'feminino' & idade < 25){
        console.log(nome, ": ACEITA")
    }
    else{
        console.log(nome, ": NÃO ACEITA")
    }
}

function ex6(){ //comparar se duas strings sao iguais
    str1 = "String numero 1"
    str2 = "String numero 2"

    if(str1 == str2){
        console.log("As duas strings são iguais")
    }
}
function ex7(){ 
    str = prompt("Digite um numero binario: ")
    str1 = str.split("")
    console.log(str1)
    qtde1 = 0
    for(let i = 0; i < str1.length; i++){
        if(str1[i] == '1'){
            qtde1++
        }
    }

    console.log(qtde1)
}

function ex8(){
    str = prompt("Digite um numero binario: ")
    str = str.replaceAll('0', '1')
    console.log(str)
}

function ex9(){
    palavra = prompt("DIgite uma palavra: ")
    reverse = palavra.split("").reverse().join("")

    console.log(reverse)
}

function ex10(){
    vetVogais = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
    str = prompt('Digite uma frase')
    slice = str.slice("")
    str2 = []
    value = undefined
    for(let i = 0; i < slice.length; i++){
        for(let j = 0; j < vetVogais.length; j++){
            if(slice[i] != vetVogais[j]){
                value = true
            }
            else if(slice[i] == vetVogais[j]){
                value = false
                break;
            }
        }
        if(value == true){
            str2.push(slice[i])
        }
    }
    str2 = str2.join("")
    console.log(str2)
    
}

function ex11(){
    vetVogais = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
    str = prompt('Digite uma frase')
    sliced = str.split("")
    numeroVogais = 0
    subs1 = []
    for(let i = 0; i < sliced.length; i++){
        for(let j = 0; j < vetVogais.length; j++){
            if(sliced[i] == vetVogais[j]){
                numeroVogais++
            }
        }
    }

    console.log(`O numero de vogais da frase é igual a: ${numeroVogais}`)
    subs = prompt("Digite uma letra para substituir todas as vogais")

    for(let i = 0; i < sliced.length; i++){
        for(let j = 0; j < vetVogais.length; j++){
            if(sliced[i] == vetVogais[j]){
                sliced[i] = subs
            }
        }
        subs1.push(sliced[i])
    }
    subs1 = subs1.join("")
    console.log(subs1)

}

function ex12(){
    str = prompt(`Digite uma frase`)
    str = str.split("")
    espacos = 0
    for(i = 0; i < str.length; i++){
        if(str[i] == " "){
            espacos++
        }
    }
    str = str.join("")
    console.log(`A quantidade de espaços é: ${espacos}`)
}

function ex13(){
    let frase = prompt("Digite a frase: ");
    let vetorSemEspacos = frase.split('').filter(letra => letra !== ' ');
    let fraseResultante = vetorSemEspacos.join('');
    console.log("Vetor resultante: " + fraseResultante);
}
function ex14(){
    let inputString = prompt("Digite a string: ");
    let letraL1 = prompt("Digite a letra a ser substituída: ");
    let letraL2 = prompt("Digite a letra de substituição: ");
    let novaString = inputString.split(letraL1).join(letraL2);
    console.log("String resultante: " + novaString);
}

function ex15(){
    let pessoaMaisJovem = { nome: "", idade: Infinity };
    let pessoaMaisVelha = { nome: "", idade: -1 };

    for (let i = 0; i < 10; i++) {
        const nome = prompt("Digite o primeiro nome da pessoa: ");
        const idade = parseInt(prompt("Digite a idade da pessoa: "));

        if (idade < 0) {
            break;
        }

        if (idade < pessoaMaisJovem.idade) {
            pessoaMaisJovem.nome = nome;
            pessoaMaisJovem.idade = idade;
        }

        if (idade > pessoaMaisVelha.idade) {
            pessoaMaisVelha.nome = nome;
            pessoaMaisVelha.idade = idade;
        }
    }

    console.log("Pessoa mais jovem: Nome - " + pessoaMaisJovem.nome + ", Idade - " + pessoaMaisJovem.idade);
    console.log("Pessoa mais velha: Nome - " + pessoaMaisVelha.nome + ", Idade - " + pessoaMaisVelha.idade);
}

function ex16(){
    const frase1 = prompt("Digite a primeira frase: ");
    const frase2 = prompt("Digite a segunda frase: ");

    function inverterTrocarA(frase) {
        return frase.split('').reverse().map(letra => (letra === 'A' || letra === 'a') ? '*' : letra).join('');
    }

    const fraseInvertida1 = inverterTrocarA(frase1);
    const fraseInvertida2 = inverterTrocarA(frase2);

    console.log("Frase 1 invertida: " + fraseInvertida1);
    console.log("Frase 2 invertida: " + fraseInvertida2);
}

function ex17(){
    const stringS = prompt("Digite a string S: ");
    const inteiroI = parseInt(prompt("Digite o inteiro não-negativo I: "));
    const inteiroJ = parseInt(prompt("Digite o inteiro não-negativo J: "));

    const segmento = stringS.slice(inteiroI, inteiroJ + 1);

    console.log("Segmento S[I..J]: " + segmento);
}

function ex18(){
    const stringS = prompt("Digite a string S: ");
    const caractereC = prompt("Digite o caractere C: ");
    const posicaoI = parseInt(prompt("Digite a posição I: "));

    const indice = stringS.indexOf(caractereC, posicaoI);

    console.log("Índice da primeira ocorrência de C a partir de I: " + indice);
}

function ex19(){
    const palavra1 = prompt("Digite a primeira palavra: ");
    const palavra2 = prompt("Digite a segunda palavra: ");

    const resultado = palavra1.localeCompare(palavra2);

    if (resultado < 0) {
        console.log(palavra1 + " vem antes de " + palavra2 + " na ordem alfabética.");
    } else if (resultado > 0) {
        console.log(palavra2 + " vem antes de " + palavra1 + " na ordem alfabética.");
    } else {
        console.log("As palavras são iguais na ordem alfabética.");
    }
}

function ex20(){
    const deslocamento = 3;
    const alfabeto = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    let novaString = "";

    for (let i = 0; i < texto.length; i++) {
        const caractereAtual = texto[i].toUpperCase();

        if (alfabeto.includes(caractereAtual)) {
            const indiceOriginal = alfabeto.indexOf(caractereAtual);
            const indiceNovo = (indiceOriginal + deslocamento) % 26;
            const novoCaractere = alfabeto[indiceNovo];

            if (texto[i] === texto[i].toUpperCase()) {
                novaString += novoCaractere;
            } else {
                novaString += novoCaractere.toLowerCase();
            }
        } else {
            novaString += texto[i];
        }
    }
}

function ex21(){
    let cleanedStr = str.toLowerCase().replace(/[^a-zA-Z0-9]/g, '');
    return cleanedStr === cleanedStr.split('').reverse().join('');
}

function ex22(){
    let primeiraString = prompt("Digite a primeira string:");
    let segundaString = prompt("Digite a segunda string:");

    return primeiraString.endsWith(segundaString);
}


//Exercicio 23

function concatenarStrings(str1, str2, N) {
    let resultado = str1.slice(0, N) + str2.slice(0, N);
    return resultado + '\0';
  }
  
  function realizarConcatenacao() {
    let str1 = prompt("Digite a primeira string:");
    let str2 = prompt("Digite a segunda string:");
    let N = parseInt(prompt("Digite um valor inteiro positivo N:"));
  
    let resultadoFinal = concatenarStrings(str1, str2, N);
    console.log(resultadoFinal);
  }

  
function ex24(){
    let regex = new RegExp(strA, 'g');
    let ocorrencias = strB.match(regex);
    return ocorrencias ? ocorrencias.length : 0;
}

function ex25(){
    let regex = /^\d{2}\/\d{2}\/\d{4}$/;
  if (!regex.test(cadeia)) {
    console.log("Formato inválido. Use o formato DD/MM/AAAA.");
    return;
  }

  let [dia, mes, ano] = cadeia.split('/').map(Number);

  if (isNaN(dia) || isNaN(mes) || isNaN(ano)) {
    console.log("Formato inválido. DD, MM e AAAA devem ser numéricos.");
    return;
  }

  console.log("Dia:", dia);
  console.log("Mês:", mes);
  console.log("Ano:", ano);
}

// ultimo exercicio: 

let S1 = "";

function lerString() {
  S1 = prompt("Digite uma string (tamanho máximo 20 caracteres):");
}

function imprimirTamanho() {
  console.log("Tamanho da string S1:", S1.length);
}

function compararStrings() {
  let S2 = prompt("Digite a segunda string para comparação:");
  console.log("Resultado da comparação:", S1 === S2);
}

function concatenarStrings() {
  let S2 = prompt("Digite a segunda string para concatenação:");
  console.log("Resultado da concatenação:", S1 + S2);
}

function imprimirReverso() {
  console.log("String S1 de forma reversa:", S1.split('').reverse().join(''));
}

function contarCaractere() {
  let caractere = prompt("Digite o caractere a ser contado:");
  let contador = 0;

  for (let i = 0; i < S1.length; i++) {
    if (S1[i] === caractere) {
      contador++;
    }
  }

  console.log("O caractere", caractere, "aparece", contador, "vezes na string S1.");
}

function substituirCaractere() {
  let C1 = prompt("Digite o caractere a ser substituído:");
  let C2 = prompt("Digite o novo caractere:");
  S1 = S1.replace(C1, C2);
  console.log("String S1 após substituição:", S1);
}

function verificarSubstring() {
  let S2 = prompt("Digite a segunda string para verificar se é substring de S1:");
  console.log("S2 é substring de S1:", S1.includes(S2));
}

function retornarSubstring() {
  let posicao = parseInt(prompt("Digite a posição para criar a substring:"));
  let tamanho = parseInt(prompt("Digite o tamanho da substring:"));
  console.log("Substring de S1:", S1.substr(posicao, tamanho));
}

function main2() {
  let opcao;

  do {
    console.log("\nMenu:");
    console.log("1. Ler uma string S1");
    console.log("2. Imprimir o tamanho da string S1");
    console.log("3. Comparar a string S1 com uma nova string S2");
    console.log("4. Concatenar a string S1 com uma nova string S2");
    console.log("5. Imprimir a string S1 de forma reversa");
    console.log("6. Contar quantas vezes um dado caractere aparece na string S1");
    console.log("7. Substituir a primeira ocorrência do caractere C1 da string S1 pelo caractere C2");
    console.log("8. Verificar se uma string S2 é substring de S1");
    console.log("9. Retornar uma substring da string S1");
    console.log("0. Sair");

    opcao = prompt("Escolha uma opção:");

    switch (opcao) {
      case "1":
        lerString();
        break;
      case "2":
        imprimirTamanho();
        break;
      case "3":
        compararStrings();
        break;
      case "4":
        concatenarStrings();
        break;
      case "5":
        imprimirReverso();
        break;
      case "6":
        contarCaractere();
        break;
      case "7":
        substituirCaractere();
        break;
      case "8":
        verificarSubstring();
        break;
      case "9":
        retornarSubstring();
        break;
      case "0":
        console.log("Programa encerrado.");
        break;
      default:
        console.log("Opção inválida. Tente novamente.");
    }
  } while (opcao !== "0");
}

main2();

main()