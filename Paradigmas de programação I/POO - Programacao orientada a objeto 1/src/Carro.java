public class Carro {
    // Atributos -> Configurando a classe

    public String marca;
    public String modelo;
    public int ano;
    public String cor;

    // Sistema construtor da classe
    public Carro(String marca, String modelo, int ano, String cor) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
        this.cor = cor;
    }
    public void acelerar(){
        System.out.println(this.modelo + " " + "acelerando ...");
    }
    public void freiar(){
        System.out.println(this.modelo + " " + "freiando");
    }
}
