public class Product {
    private String name;
    private float price;
    private int id;

    public Product(String name, float price, int id) {
        this.setName(name);
        this.setPrice(price);
        this.setId(id);
    }

    public Product() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @java.lang.Override
    public java.lang.String toString() {
        return "Product{" +
                "nome=" + name +
                ", price=" + price +
                ", id=" + id +
                '}';
    }
}
