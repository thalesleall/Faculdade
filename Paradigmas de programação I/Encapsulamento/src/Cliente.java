public class Cliente {
    private String numeroConta;
    private String numeroAgencia;
    private String nome;
    private float saldo;

    public String getNumeroConta() {
        return numeroConta;
    }

    public void setNumeroConta(String numeroConta) {
        if (numeroConta.length() == 9 && numeroConta.charAt(8) == '-') {
            this.numeroConta = numeroConta;
        } else {
            System.out.println("Número de conta inválido.");
        }
    }

    public String getNumeroAgencia() {
        return numeroAgencia;
    }

    public void setNumeroAgencia(String numeroAgencia) {
        if (numeroAgencia.length() == 7 && numeroAgencia.charAt(6) == '-') {
            this.numeroAgencia = numeroAgencia;
        } else {
            System.out.println("Número de agência inválido.");
        }
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome.length() <= 30) {
            this.nome = nome;
        } else {
            System.out.println("Nome excede 30 caracteres.");
        }
    }

    public float getSaldo() {
        return saldo;
    }

    public void setSaldo(float saldo) {
        if (saldo >= 0) {
            this.saldo = saldo;
        } else {
            System.out.println("Saldo não pode ser negativo.");
        }
    }
}
