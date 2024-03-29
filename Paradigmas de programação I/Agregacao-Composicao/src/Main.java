//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        // Crie três produtos diferentes prod1, prod2 e prod3
        // Crie dois carrinhos diferentes car1 e car2
        // o Carrinho car1 deve ter 2 itens de carrinho com os produtos prod1 e prod2

        // o Carrinho car2 deve ter 2 itens de carrinho com os produtos prod2 e prod3

        //ao final, mostre os dados presentes nos carrinhos car1 e car2
        //data de entrega: 11/03 - segunda feira AVA

        Product prod1 = new Product("Arroz", 10, 1);
        Product prod2 = new Product("Feijao", 12, 2);
        Product prod3 = new Product("Cafe", 15, 3);

        ShoppingCart car1 = new ShoppingCart(01, 100);
        car1.addCarItem(10, 5, prod1);
        car1.addCarItem(20, 10, prod2);

        ShoppingCart car2 = new ShoppingCart(02, 150);
        car2.addCarItem(15, 10, prod2);
        car2.addCarItem(25,5, prod3);

        System.out.println(car1.toString());
    }
}