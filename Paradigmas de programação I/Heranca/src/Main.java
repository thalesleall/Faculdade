import rh.Assistente;
import rh.Diretor;
import rh.Funcionario;
import rh.Gerente;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void exibeDados(Funcionario camaleao){
        System.out.println(camaleao.toString());
        System.out.println("Salario final " + camaleao.calculaSalario());
    }

    public static void main(String[] args) {
        //TIP Press <shortcut actionId="ShowIntentionActions"/> with your caret at the highlighted text
        // to see how IntelliJ IDEA suggests fixing it.
        Assistente as1 = new Assistente("João", "Franca", "123", 1200, 300);
        exibeDados(as1);

        Gerente ge1 = new Gerente("Pedro", "Franca", "456", 5000, 6000);
        exibeDados(ge1);

        Diretor dir1 = new Diretor("Lucas", "Franca", "789", 9000, 200);
        exibeDados(dir1);
    }
}