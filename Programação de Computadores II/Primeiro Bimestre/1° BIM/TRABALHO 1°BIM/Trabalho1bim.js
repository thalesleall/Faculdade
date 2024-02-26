let buscaFilme = async () => {
    let filme = document.getElementById("filme").value;
    let url = `https://www.omdbapi.com/?apikey=5df8c629&t=${filme}`

    let resposta = await fetch(url);
    let respostaJSON = await resposta.json();

    if (!respostaJSON.Title) {
        alert(`O Filme não existe`);
    } else {
        document.getElementById("title").innerHTML = respostaJSON.Title;
        document.getElementById("Released").innerHTML = respostaJSON.Released;
        document.getElementById("Runtime").innerHTML = respostaJSON.Runtime;
        document.getElementById("Genre").innerHTML = respostaJSON.Genre;
        document.getElementById("Poster").setAttribute('src', respostaJSON.Poster)
    }
}
