package lista3_exe2;

public class Flight {
    private Passager id;
    private String origin;
    private String destination;

    public Flight() {
    }

    public Flight(Passager id, String origin, String destination) {
        this.setId(id);
        this.setOrigin(origin);
        this.setDestination(destination);
    }

    public Passager getId() {
        return id;
    }

    public void setId(Passager id) {
        this.id = id;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }
}
