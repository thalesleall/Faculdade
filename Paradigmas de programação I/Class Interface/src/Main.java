public class Main {
    public static void main(String[] args) {
        AtletaBasqueteVolei abv = new AtletaBasqueteVolei();
        abv.sacar();
        abv.cortar();
        abv.arremessar();
        abv.baterLanceLivre();

        JogadorBasquete jb = new AtletaBasqueteVolei();
        jb.arremessar();
        jb.baterLanceLivre();
    }
}