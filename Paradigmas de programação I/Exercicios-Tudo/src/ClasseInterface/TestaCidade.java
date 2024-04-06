package ClasseInterface;

public class TestaCidade {
    public static void main(String arges[]){
        Pessoa fulano = new Pessoa();
        Cidade rp = new Cidade();
        rp.contrata(fulano);
        rp.contrata((Empregado) fulano); //conversão(cast) igual convertar de float para int
        rp.cobraDe(fulano);
        rp.registra(fulano);
        rp.alimenta(fulano);
    }
}
