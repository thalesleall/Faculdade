class Graph {
    constructor() {
        this.vertices = {};
    }

    addVertex(vertex) {
        if (!this.vertices[vertex]) {
            this.vertices[vertex] = [];
        } else {
            console.log("Vertex already exists!");
        }
    }

    addEdge(vertex1, vertex2) {
        if (this.vertices[vertex1] && this.vertices[vertex2]) {
            this.vertices[vertex1].push(vertex2);
            this.vertices[vertex2].push(vertex1); // If it's a directed graph, remove this line
        } else {
            console.log("One or more vertices do not exist!");
        }
    }

    hasEdge(vertex1, vertex2) {
        if (this.vertices[vertex1] && this.vertices[vertex2]) {
            return this.vertices[vertex1].includes(vertex2);
        } else {
            console.log("One or more vertices do not exist!");
            return false;
        }
    }

    getAdjacentVertices(vertex) {
        if (this.vertices[vertex]) {
            return this.vertices[vertex];
        } else {
            console.log("Vertex does not exist!");
            return [];
        }
    }
}

// Criando um grafo com 15 letras
const graph = new Graph();
const vertices = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O'];

// Adicionando vértices ao grafo
vertices.forEach(vertex => graph.addVertex(vertex));

// Adicionando arestas (considerando um fator de ramificação de 2)
graph.addEdge('A', 'B');
graph.addEdge('A', 'C');
graph.addEdge('B', 'D');
graph.addEdge('B', 'E');
graph.addEdge('C', 'F');
graph.addEdge('C', 'G');
graph.addEdge('D', 'H');
graph.addEdge('D', 'I');
graph.addEdge('E', 'J');
graph.addEdge('E', 'K');
graph.addEdge('F', 'L');
graph.addEdge('F', 'M');
graph.addEdge('G', 'N');
graph.addEdge('G', 'O');

// Exemplo de uso
console.log(graph.getAdjacentVertices('A')); // Deve retornar ['B', 'C']
console.log(graph.getAdjacentVertices('B')); // Deve retornar ['A', 'D', 'E']
