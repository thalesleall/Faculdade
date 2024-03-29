package exe2;

public class Aniversario extends CartaoWeb{
    public Aniversario(String destinatario) {
        super(destinatario);
    }

    public Aniversario() {
    }

    @Override
    public void showMessage() {
        System.out.println(("Feliz Aniversario, " + this.destinatario));
    }
}
