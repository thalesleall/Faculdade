package lista3_exe2;

import java.util.Date;

public class Reservation{
    private Passager id;
    private Date date;

    public Reservation() {
    }

    public Reservation(Passager id, Date date) {
        this.setId(id);
        this.setDate(date);
    }

    public Passager getId() {
        return id;
    }

    public void setId(Passager id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
