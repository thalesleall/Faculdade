package lista3_exe1;

public class Person {
    private int id;
    private String name;
    private String user;


    public Person(){};

    public Person(int id, String name, String user) {
        this.setId(id);
        this.setName(name);
        this.setUser(user);
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

    public String getUser() {
        return user;
    }
    public void setUser(String user) {
        this.user = user;
    }
}
