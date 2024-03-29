package exe2;

public class Natal extends CartaoWeb {

    public Natal(String destinatario) {
        super(destinatario);
    }

    public Natal() {
    }

    @Override
    public void showMessage() {
        System.out.println("Feliz natalll" + this.destinatario);
    }
}
