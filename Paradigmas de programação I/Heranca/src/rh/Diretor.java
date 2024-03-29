package rh;

public class Diretor extends Funcionario{
    private float acoesEmpresa;

    public Diretor(String nome, String endereco, String cpf, float salario, float acoesEmpresa) {
        super(nome, endereco, cpf, salario);
        this.acoesEmpresa = acoesEmpresa;
    }

    public Diretor() {
    }

    public float getAcoesEmpresa() {
        return acoesEmpresa;
    }

    public void setAcoesEmpresa(float acoesEmpresa) {
        this.acoesEmpresa = acoesEmpresa;
    }

    @Override
    public String toString() {
        return "Diretor{" +
                super.toString() + "acoesEmpresa=" + acoesEmpresa +
                '}';
    }

    @Override
    public float calculaSalario() {
        return this.salario +(this.acoesEmpresa * 2.10f) /12;
    }
}
