package exe2_2;

public class natal extends CartaoWeb{

    public natal(String destinatario) {
        super(destinatario);
    }

    @Override
    public void setDestinatario(String destinatario) {
        Destinatario = destinatario;
    }
    @Override
    public void showMessage() {
        System.out.println("Feliz Natal! " + this.Destinatario);
    }
}
