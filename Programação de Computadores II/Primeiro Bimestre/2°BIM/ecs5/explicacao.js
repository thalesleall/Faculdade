//foreach
let nome = ["José", "da Silva", "Xavier", "de Oliveira", "Diniz"]
let nomeCompleto = ""

nome.forEach( (item) => nomeCompleto => nomeCompleto + "  " + item)

console.log(nomeCompleto)



// map
let vetor1 = [2, 3, 4, 5, 6, 7]
let vetor2 = vetor1.map(
    (item) => {
        return item * 2
    }
)

console.log(vetor2)


// reduce 
let vetor = [10, 20, 30, 40, 50]
let soma = vetor.reduce( (total, item) => {return total + item} )

//filter
let filtro = vetor.filter( (item) => item > 25)
console.log(filtro)

// find
let encontra = vetor.find( (item) => item > 25)
console.log(encontra)

//some
let algum = vetor.some( (item) => item > 25)
console.log(algum)

//json.parse
let veioServidor = '{"name":"John", "city":"New York"}'
let objetoJS = JSON.parse(veioServidor)
console.log(objetoJS)
