// Usando objeto, faça um programa que calcule o delta de uma equação do segundo grau. Sabe-se que: delta = b^2 - 4 * a *c

        function CalculaDelta() {
                
                let obj = {
                    b: 0,
                    a: 0,
                    c: 0
                }
                obj.b = Number(prompt("Digite B"))
                obj.a = Number(prompt("Digite A"))
                obj.c = Number(prompt("Digite C"))

                let delta = (obj.b ** 2) - 4 * obj.a * obj.c

                alert(`O valor de delta é: ${delta}`)
            }

//Faça um programa que reçeba o codigo, nome, p1 e p2 de 10 alunos. O programa deve calcular a média aritmética de cada aluno e mostrar também a média da turma

        function CalculaMedia(){
            let cm = {
                codigo: [],
                nome: [],
                p1: [],
                p2: [],
                media: [],
                qtdeAlunos: Number(prompt("Digite a quantidade de alunos: "))
            }
            let somaMedias = 0
            
            for(let i = 1; i < cm.qtdeAlunos; i++){
                cm.codigo[i] = Number(prompt("Digite o codigo do aluno:"))
                cm.nome[i] = prompt("Digite o nome do aluno")
                cm.p1[i] = Number(prompt("Digite a nota da prova 1"))
                cm.p2[i] = Number(prompt("Digite a nota da prova 2"))
                cm.media[i] = `Codigo: ${cm.codigo[i]}\nNome: ${cm.nome[i]}\n1° prova: ${cm.p1[i]}\n2° prova: ${cm.p2[i]}\nMedia: ${(cm.p1[i] + cm.p2[i])/2}\n`
                somaMedias = somaMedias + (cm.p1[i] + cm.p2[i])
            }
            alert(`${cm.media}\n\nA media das turmas foi: ${somaMedias/qtdeAlunos}`)
        }