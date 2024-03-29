package exe1;

public class Palco {
    private Ator ator = new AtorFeliz();

    public void altera(){
        if (ator instanceof AtorFeliz){
            ator = new AtorTriste();
        }
        ator = new AtorTriste();
    }
    public void atuar(){
        ator.ato(); //Polimorfismo
    }
}
