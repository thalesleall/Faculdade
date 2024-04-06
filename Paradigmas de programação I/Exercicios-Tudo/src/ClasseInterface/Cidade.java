package ClasseInterface;

public class Cidade {
    public void contrata(Professor p){
        p.ensina();
        p.trabalha();
    }

    public void contrata(Empregado e){
        e.trabalha();
    }
    public void cobraDe(Contribuinte c) {
        c.pegaIR();
    }

    public void registra(Cidadao c) {
        c.tiraRG();
    }

    public void alimenta(Animal a){
        a.come();
    }


}
