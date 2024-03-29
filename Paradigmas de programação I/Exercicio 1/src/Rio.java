public class Rio {
    private String nome;
    private float nivel;
    private boolean poluido;

    public Rio() {
    }

    public Rio(String nome, float nivel, boolean poluido) {
        this.nome = nome;
        this.nivel = nivel;
        this.poluido = poluido;
    }

    public void chover(float aumento) {
        this.nivel += aumento;
    }

    public void ensolarar(float diminuicao) {
        this.nivel -= diminuicao;
    }

    public void limpar() {
        this.poluido = false;
    }

    public void sujar() {
        this.poluido = true;
    }

    public void mostra() {
        System.out.println("Nome do rio: " + this.nome);
        System.out.println("Nível do rio: " + this.nivel);
        System.out.println("O rio está poluído? " + (this.poluido ? "Sim" : "Não"));
    }
}
