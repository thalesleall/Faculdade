public class Aluno {
    private int numeroAluno;
    private String nome;
    private int idade;
    private float p1;
    private float p2;

    // Construtor sem argumento com valores default
    public Aluno() {
        this.numeroAluno = 0;
        this.nome = "";
        this.idade = 0;
        this.p1 = 0.0f;
        this.p2 = 0.0f;
    }

    // Construtor com inicialização das variáveis
    public Aluno(int numeroAluno, String nome, int idade, float p1, float p2) {
        setNumeroAluno(numeroAluno);
        setNome(nome);
        setIdade(idade);
        setP1(p1);
        setP2(p2);
    }

    public int getNumeroAluno() {
        return numeroAluno;
    }

    public void setNumeroAluno(int numeroAluno) {
        if (String.valueOf(numeroAluno).length() == 6) {
            this.numeroAluno = numeroAluno;
        } else {
            System.out.println("O número do aluno deve ter tamanho exatamente igual a 6.");
        }
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome.length() <= 30) {
            this.nome = nome;
        } else {
            System.out.println("O nome do aluno não pode ultrapassar tamanho 30.");
        }
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        if (idade >= 0) {
            this.idade = idade;
        } else {
            System.out.println("A idade não pode ser negativa.");
        }
    }

    public float getP1() {
        return p1;
    }

    public void setP1(float p1) {
        if (p1 >= 0) {
            this.p1 = p1;
        } else {
            System.out.println("A nota p1 não pode ser negativa.");
        }
    }

    public float getP2() {
        return p2;
    }

    public void setP2(float p2) {
        if (p2 >= 0) {
            this.p2 = p2;
        } else {
            System.out.println("A nota p2 não pode ser negativa.");
        }
    }

    // Método para calcular e imprimir a média final do aluno
    public void notaFinal() {
        float media = (p1 + p2) / 2;
        System.out.println("A média final do aluno é: " + media);
    }

    // Método para imprimir os dados do aluno
    public void dadosAluno() {
        System.out.println("Número do Aluno: " + numeroAluno);
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
    }
}
