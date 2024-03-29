public class Produto {
    private int id;
    private String descricao;
    private int qtde;
    private float preco;

    public Produto() {
    }

    public Produto(int id, String descricao, int qtde, float preco) {
        this.id = id;
        this.descricao = descricao;
        this.qtde = qtde;
        this.preco = preco;
    }

    public void comprar(int x){
        this.qtde += x;
    }
    public void vender(int x) {
        if (this.qtde >= x) {
            this.qtde -= x;
        } else {
            System.out.println("Quantidade insuficiente em estoque.");
        }
    }
    public void subir(float x) {
        this.preco += x;
    }
    public void descer(float x) {
        this.preco -= x;
    }
    public void mostra() {
        System.out.println("ID: " + id);
        System.out.println("Descrição: " + descricao);
        System.out.println("Quantidade em estoque: " + qtde);
        System.out.println("Preço: " + preco);
    }

}
