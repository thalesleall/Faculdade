//Faça um programa que utiliza objeto e vetor
    //1 - Solicitar a o usuário para informar 4 filmes, contendo: Titulo, Duração, Classificação (livre = 0), Avaliação 
    //2 - Calcular e mostrar a média de avaliações
    //3 - Calcular e mostrar o título do filme mais curto e título do filme mais longo
    //4 - Calcular e mostrar o título do filme melhor avaliação

    function Filmes(){
        
        let vetor = []
        let i = 0;
        let sumMedia, qtdeMedia, mediaAvaliação, maisCurto, maisLongo, tituloMaisCurto, tituloMaisLongo, melhorFilme, tituloMelhorFilme

        for(i = 0; i < 4; i++){
            //Criar objeto dentro de cada casa do vetor 
            let filme = {
                titulo: prompt(`Digite o nome do ${i + 1}° filme.`),
                duracao: Number(prompt(`Digite a duração do ${i + 1}° filme.`)),
                classificacao: Number(prompt(`Digite a classificação do ${i + 1}° filme.`)),
                avaliacao: Number(prompt(`Digite a avaliação do ${i + 1}° filme.`))
            }
            vetor.push(filme)
        }
        for(i = 0; i < 4; i++){
            sumMedia += vetor[i].avaliacao
            qtdeMedia++
        }
        mediaAvaliação = sumMedia/qtdeMedia

        console.log(`A media das avaliações é ${mediaAvaliação}`)

        for(i = 0; i < 4; i++){
            if(vetor[i].duracao > maisLongo){
                maisLongo = vetor[i].duracao
                tituloMaisLongo = vetor[i].titulo

            }
            if(vetor[i].duracao < maisCurto){
                maisCurto = vetor[i].duracao
                tituloMaisCurto = vetor[i].titulo
            }
        }

        console.log(`O filme mais longo é o filme: ${tituloMaisLongo}`)
        console.log(`O filme mais curto é o filme: ${tituloMaisCurto}`)
        
        for(i = 0; i > 4; i++){
            if(vetor[i].avaliacao > melhorFilme){
                melhorFilme = vetor[i].avaliacao
                tituloMelhorFilme = vetor[i].titulo

            }
        }

        console.log(`O filme com melhor avaliação é o filme: ${tituloMelhorFilme}`)

    }
