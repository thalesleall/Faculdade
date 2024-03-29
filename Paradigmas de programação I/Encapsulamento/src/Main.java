//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Cliente fulano = new Cliente();
        fulano.setNome("Fulano");
        fulano.setNumeroConta("12345678-9");
        fulano.setNumeroAgencia("987654-3");
        fulano.setSaldo(1000.0f); // saldo inicial

        // Realizando um depósito de R$ 500.00
        float deposito = 500.0f;
        fulano.setSaldo(fulano.getSaldo() + deposito);

        // Realizando um saque de R$ 300.00
        float saque = 300.0f;
        if (saque <= fulano.getSaldo()) {
            fulano.setSaldo(fulano.getSaldo() - saque);
            System.out.println("Saque realizado com sucesso.");
        } else {
            System.out.println("Saldo insuficiente para realizar o saque.");
        }

        System.out.println("Novo saldo: " + fulano.getSaldo());
    }
}
public class Teste {
    public static void main(String[] args) {
        // Instanciando um objeto Aluno com o construtor que recebe todos os parâmetros
        Aluno aluno1 = new Aluno(123456, "João", 20, 8.5f, 7.8f);

        // Chamando o método dadosAluno() para imprimir os dados do aluno
        System.out.println("Dados do Aluno 1:");
        aluno1.dadosAluno();

        // Chamando o método notaFinal() para calcular e imprimir a média final do aluno
        aluno1.notaFinal();

        // Instanciando outro objeto Aluno com o construtor padrão
        Aluno aluno2 = new Aluno();

        // Definindo os atributos do aluno 2 utilizando os métodos setters
        aluno2.setNumeroAluno(654321);
        aluno2.setNome("Maria");
        aluno2.setIdade(22);
        aluno2.setP1(7.0f);
        aluno2.setP2(6.5f);

        // Chamando o método dadosAluno() para imprimir os dados do aluno 2
        System.out.println("\nDados do Aluno 2:");
        aluno2.dadosAluno();

        // Chamando o método notaFinal() para calcular e imprimir a média final do aluno 2
        aluno2.notaFinal();
    }
}