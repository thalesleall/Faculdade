package lista3_exe1;

public class Message {
    private Person id;
    private String text;

    public Message() {
    }

    public Message(Person id, String text) {
        this.setId(id);
        this.setText(text);
    }

    public Person getId() {
        return id;
    }

    public void setId(Person id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
