package exe2_2;

import java.util.ArrayList;
import java.util.List;
public class Main {
    public static void main(String[] args){
        List<CartaoWeb> listinha = new ArrayList<CartaoWeb>();
        listinha.add(new diadosnamorados("Bibi"));
        listinha.add(new natal("Bibi"));
        listinha.add(new aniversario(("Daniboy")));

        for(CartaoWeb item: listinha){
            item.showMessage();
        }
    }
}
