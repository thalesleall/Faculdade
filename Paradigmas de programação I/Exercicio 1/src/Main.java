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
}