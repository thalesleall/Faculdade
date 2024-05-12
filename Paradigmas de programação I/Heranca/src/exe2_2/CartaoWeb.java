package exe2_2;

public abstract class CartaoWeb {
    public String Destinatario;

    public CartaoWeb(String destinatario) {
        setDestinatario(destinatario);
    }
    public CartaoWeb(){
    }

    public String getDestinatario() {
        return Destinatario;
    }

    public void setDestinatario(String destinatario) {
        Destinatario = destinatario;
    }
    public abstract void showMessage();
}
