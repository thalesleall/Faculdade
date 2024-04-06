package ClasseInterface;

public class Pessoa extends Animal implements Cidadao, Contribuinte, Professor {

    @Override
    public void vota() {
        System.out.println("Pessoa votou");
    }

    @Override
    public void tiraRG() {
        System.out.println("Pessoa tirou RG");
    }

    @Override
    public void pegaIR() {
        System.out.println("Pessoa pagou imposto de renda");
    }

    @Override
    public void tiraCPF() {
        System.out.println("Pessoa tirou CPF");
    }

    @Override
    public void trabalha() {
        System.out.println("Pessoa trabalho");
    }

    @Override
    public void ensina() {
        System.out.println("Pessoa ensinou");
    }
}
