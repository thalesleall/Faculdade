package lista3_exe1;
public class Main {
    public static void main(String[] args) {

        Person p1 = new Person(11, "Thales", "thalesleal");
        Forum f1 = new Forum(p1.getId(), "TJ", "https://tj.gob.br");

        System.out.println(f1.getId());

    }}