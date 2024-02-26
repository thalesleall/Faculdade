public class Cliente {
    private int numeroConta;
    private int numeroAgencia;
    private String nome;
    private float saldo;

    public Cliente(int numeroConta, int numeroAgencia, String nome, float saldo) {
        this.numeroConta = numeroConta;
        this.numeroAgencia = numeroAgencia;
        this.nome = nome;
        this.saldo = saldo;
    }

    public void realizarDeposito(float valor) {
        saldo += valor;
        System.out.println("Depósito de R$" + valor + " realizado com sucesso.");
    }

    public void realizarSaque(float valor) {
        if (valor > saldo) {
            System.out.println("Saldo insuficiente para realizar o saque.");
        } else {
            saldo -= valor;
            System.out.println("Saque de R$" + valor + " realizado com sucesso.");
        }
    }

    public String obterInformacoes() {
        return "Número da conta: " + numeroConta + "\nNome do cliente: " + nome + "\nSaldo atual: R$" + saldo;
    }
}
