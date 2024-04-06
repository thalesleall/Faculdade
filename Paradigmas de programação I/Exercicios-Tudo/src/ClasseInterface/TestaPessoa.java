package ClasseInterface;

public class TestaPessoa {
    public static void main(String args[]){
        Pessoa objPes = new Pessoa();
        objPes.come();
        objPes.tiraRG();
        objPes.tiraCPF();
        objPes.trabalha();
        objPes.pegaIR();

        Cidadao objCi = new Pessoa();
        objCi.tiraRG();
        objCi.vota();

        Empregado em1 = new Pessoa();
        em1.trabalha();

    }
}
