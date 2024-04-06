package lista3_exe2;

public class Passager {
        private int id;
        private String name;
        private String cpf;

    public Passager() {
    }

    public Passager(int id, String name, String cpf) {
        this.setId(id);
        this.setName(name);
        this.setCpf(cpf);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
}
