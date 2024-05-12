package exe2_2;

public class diadosnamorados extends CartaoWeb{

    public diadosnamorados(String destinatario) {
        super(destinatario);
    }

    @Override
    public void setDestinatario(String destinatario) {
        Destinatario = destinatario;
    }
    @Override
    public void showMessage() {
        System.out.println("Feliz dia dos namorados " + this.Destinatario);
    }
}
