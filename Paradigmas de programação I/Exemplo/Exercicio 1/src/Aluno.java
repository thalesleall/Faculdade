public class Aluno{

    int numeroAluno;
    String nome;
    int idade;
    float p1;
    float p2;

    public Aluno(int numeroAluno, String nome, int idade, float p1, float p2){
        this.numeroAluno = numeroAluno;
        this.nome = nome;
        this.idade = idade;
        this.p1 = p1;
        this.p2 = p2;
    }

    public void notaFinal(){
        float nota;
        nota = (this.p1 + this.p1)/2;
        System.out.println("A nota final do aluno é: " + nota);
    }
    public void dadosAluno(){
        System.out.println("O numero do aluno: " + this.numeroAluno + "\nNome: " + this.nome + "\nIdade: " + idade);
    }

}
