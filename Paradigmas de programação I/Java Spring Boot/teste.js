import('node-fetch').then(({ default: fetch }) => {
    // Seu código que usa o fetch aqui
    const rl = require('readline').createInterface({
      input: process.stdin,
      output: process.stdout
    });
  
    rl.question('Digite um número para verificar se é primo: ', (numero) => {
      const url = `http://localhost:8080/primo/${numero}`;
  
      fetch(url)
        .then(response => {
          if (!response.ok) {
            throw new Error('Erro ao chamar a API: ' + response.status);
          }
          return response.text();
        })
        .then(data => {
          console.log('Resposta da API:', data);
        })
        .catch(error => {
          console.error('Erro:', error);
        });
  
      rl.close();
    });
  }).catch(error => {
    console.error('Erro ao importar o módulo:', error);
  });