package exe2;

public class DiaDosNamorados extends CartaoWeb {
    public DiaDosNamorados(String destinatario) {
        super(destinatario);
    }
    public DiaDosNamorados() {
    }


    @Override
    public void showMessage() {
        System.out.println(this.destinatario + " feliz dia dos namorados");
    }
}
