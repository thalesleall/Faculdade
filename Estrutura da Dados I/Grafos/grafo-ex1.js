// Definição da classe Graph 2° possibilidade
class Graph {
    constructor() {
        this.vertices = [];
        this.adjacencyMatrix = [];
    }

    // Adiciona um vértice ao grafo
    addVertex(vertex) {
        this.vertices.push(vertex);
        for (let i = 0; i < this.adjacencyMatrix.length; i++) {
            this.adjacencyMatrix[i].push(0); // Adiciona uma coluna para o novo vértice
        }
        this.adjacencyMatrix.push(new Array(this.vertices.length).fill(0)); // Adiciona uma linha para o novo vértice
    }

    // Adiciona uma aresta entre dois vértices
    addEdge(vertex1, vertex2) {
        const index1 = this.vertices.indexOf(vertex1);
        const index2 = this.vertices.indexOf(vertex2);
        this.adjacencyMatrix[index1][index2] = 1;
        this.adjacencyMatrix[index2][index1] = 1;
    }

    // Converte o grafo em uma representação no console
    toConsole() {
        console.log('  ' + this.vertices.join(' '));
        for (let i = 0; i < this.vertices.length; i++) {
            let row = this.vertices[i] + ' ';
            for (let j = 0; j < this.vertices.length; j++) {
                row += '| ' + this.adjacencyMatrix[i][j];
            }
            console.log(row + '|');
        }
    }
}

// Criando um novo grafo
let graph = new Graph();

// Adicionando vértices
graph.addVertex('A');
graph.addVertex('B');
graph.addVertex('C');
graph.addVertex('D');

// Adicionando arestas
graph.addEdge('A', 'B');
graph.addEdge('B', 'C');
graph.addEdge('C', 'D');
graph.addEdge('D', 'A');

// Convertendo o grafo em uma representação no console
graph.toConsole();

//Primeira possibilidade
// Definição da classe Graph
class Graph {
    constructor() {
        this.vertices = [];
        this.edges = [];
    }

    // Adiciona um vértice ao grafo
    addVertex(vertex) {
        this.vertices.push(vertex);
        this.edges[vertex] = [];
    }

    // Adiciona uma aresta entre dois vértices
    addEdge(vertex1, vertex2) {
        this.edges[vertex1].push(vertex2);
        this.edges[vertex2].push(vertex1);
    }

    // Converte o grafo em uma representação no console
    toConsole() {
        // Loop pelos vértices
        for (let i = 0; i < this.vertices.length; i++) {
            let vertex = this.vertices[i];
            let neighbors = this.edges[vertex].join(', ');
            console.log(`${vertex}: ${neighbors}`);
        }
    }
}

// Criando um novo grafo
let graph = new Graph();

// Adicionando vértices
graph.addVertex('A');
graph.addVertex('B');
graph.addVertex('C');
graph.addVertex('D');

// Adicionando arestas
graph.addEdge('A', 'B');
graph.addEdge('B', 'C');
graph.addEdge('C', 'D');
graph.addEdge('D', 'A');

// Convertendo o grafo em uma representação no console
graph.toConsole();
