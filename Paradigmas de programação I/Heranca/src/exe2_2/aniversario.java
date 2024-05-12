package exe2_2;

public class aniversario extends CartaoWeb {

    public aniversario(String destinatario) {
        super(destinatario);
    }

    @Override
    public void setDestinatario(String destinatario) {
        Destinatario = destinatario;
    }

    @Override
    public void showMessage() {
        System.out.println("Feliz aniversario! " + this.Destinatario);
    }
}
