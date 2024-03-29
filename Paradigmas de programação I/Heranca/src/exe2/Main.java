package exe2;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args){
        List<CartaoWeb> lista = new ArrayList<CartaoWeb>();
        lista.add(new Aniversario("Pedro"));
        lista.add(new Natal("Daniel"));
        lista.add(new DiaDosNamorados(("Bianca")));
        for(CartaoWeb item: lista){
            item.showMessage();
        }
    }
}
