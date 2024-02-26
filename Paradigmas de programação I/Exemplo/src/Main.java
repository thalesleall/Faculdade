//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Carro obj1 = new Carro("Fiat" , "Palio", "Branco", 2014, false, 0);
        Carro obj2 = new Carro("Honda" , "Civic", "Preto", 2003, false, 0);
        Carro obj3 = new Carro("Fiat" , "Uno", "Prata", 2018, false, 0);

        obj1.mostra();
        obj2.mostra();
        obj3.mostra();
        obj1.ligar();
        obj2.ligar();
        obj3.ligar();
        obj1.acelerar(30);
        obj2.acelerar(50);
        obj3.acelerar(80);
        obj1.mostra();
        obj2.mostra();
        obj3.mostra();
    }

}

