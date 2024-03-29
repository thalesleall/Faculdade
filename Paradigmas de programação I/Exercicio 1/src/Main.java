//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        //TIP Press <shortcut actionId="ShowIntentionActions"/> with your caret at the highlighted text
        // to see how IntelliJ IDEA suggests fixing it.
        Aluno aluno1 =  new Aluno(24740, "Thales", 19, 7, 8);

        System.out.println("Nota final: " + aluno1.notaFinal());
        aluno1.dadosAluno();
        System.out.println("O aluno passou? " + aluno1.passou());

        Cliente fulano = new Cliente(12345, 54321, "Fulano", 1000);
        fulano.realizarDeposito(500);
        fulano.realizarSaque(200);
        System.out.println("\nInformações do cliente Fulano:");
        System.out.println(fulano.obterInformacoes());

        Cliente beltrano = new Cliente(54321, 12345, "Beltrano", 2000);
        beltrano.realizarDeposito(1000);
        beltrano.realizarSaque(300);
        System.out.println("\nInformações do cliente Beltrano:");
        System.out.println(beltrano.obterInformacoes());


    }
    public class TestaProduto {
        public static void main(String[] args) {
            Produto produto1 = new Produto(1, "Produto A", 10, 20.0f);
            Produto produto2 = new Produto();

            produto2.comprar(5);
            produto2.vender(2);
            produto2.subir(5.0f);
            produto2.descer(2.0f);

            System.out.println("Produto 1:");
            produto1.mostra();
            System.out.println("\nProduto 2:");
            produto2.mostra();
        }
    }
    public class TestaRio {
        public static void main(String[] args) {
            Rio rio1 = new Rio("Rio Amazonas", 20.0f, false);
            Rio rio2 = new Rio();

            rio2.chover(5.0f);
            rio2.sujar();

            System.out.println("Rio 1:");
            rio1.mostra();
            System.out.println("\nRio 2:");
            rio2.mostra();
        }
    }

}