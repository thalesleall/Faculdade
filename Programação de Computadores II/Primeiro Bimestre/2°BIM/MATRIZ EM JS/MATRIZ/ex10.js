
// Função para preencher a matriz com números inteiros aleatórios entre 1 e 10
function preencherMatriz(matriz) {
  for (let i = 0; i < matriz.length; i++) {
    for (let j = 0; j < matriz[i].length; j++) {
      matriz[i][j] = Math.floor(Math.random() * 10) + 1;
    }
  }
}

// Função para calcular a soma dos elementos da linha 4
function somaLinha4(matriz) {
  let soma = 0;
  for (let j = 0; j < matriz[3].length; j++) {
    soma += matriz[3][j];
  }
  return soma;
}

// Função para calcular a soma dos elementos da coluna 2
function somaColuna2(matriz) {
  let soma = 0;
  for (let i = 0; i < matriz.length; i++) {
    soma += matriz[i][1];
  }
  return soma;
}

// Função para calcular a soma dos elementos da diagonal principal
function somaDiagonalPrincipal(matriz) {
  let soma = 0;
  for (let i = 0; i < matriz.length; i++) {
    soma += matriz[i][i];
  }
  return soma;
}

// Função para calcular a soma dos elementos da diagonal secundária
function somaDiagonalSecundaria(matriz) {
  let soma = 0;
  for (let i = 0; i < matriz.length; i++) {
    soma += matriz[i][matriz.length - 1 - i];
  }
  return soma;
}

// Função para calcular a soma de todos os elementos da matriz
function somaTotal(matriz) {
  let soma = 0;
  for (let i = 0; i < matriz.length; i++) {
    for (let j = 0; j < matriz[i].length; j++) {
      soma += matriz[i][j];
    }
  }
  return soma;
}

// Criando a matriz 5x5
const matriz = new Array(5);
for (let i = 0; i < matriz.length; i++) {
  matriz[i] = new Array(5);
}

// Preenchendo a matriz com números inteiros aleatórios
preencherMatriz(matriz);

// Calculando e mostrando as somas
console.log("Soma da linha 4: " + somaLinha4(matriz));
console.log("Soma da coluna 2: " + somaColuna2(matriz));
console.log("Soma da diagonal principal: " + somaDiagonalPrincipal(matriz));
console.log("Soma da diagonal secundária: " + somaDiagonalSecundaria(matriz));
console.log("Soma total: " + somaTotal(matriz));
