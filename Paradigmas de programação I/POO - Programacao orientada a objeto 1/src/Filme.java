public class Filme {

    public String nome;
    public int ano;
    public int avaliacao;

    public Filme(String nome, int ano, int avaliacao){
        this.nome = nome;
        this.ano = ano;
        this.avaliacao = avaliacao;
    }

    public void Rodando(){
        System.out.println(this.nome + " " + "esta começando");
    }
    public void pausado(){
        System.out.println(this.nome + " " + "esta pausado");
    }
    public void informacoes(){
            System.out.println(this.ano + " " + "é o ano do filme");
            System.out.println(this.avaliacao + " " + "é a avaliacao do filme");
        }
}
