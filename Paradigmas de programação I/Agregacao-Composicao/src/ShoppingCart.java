import java.util.ArrayList;
public class ShoppingCart {
    private int id;
    private float totalPrice;
    //Composição
    private ArrayList<CarItem> carItens;

    public ShoppingCart() {
        //Inicia o vetor
        carItens = new ArrayList<CarItem>();
    }

    public  ShoppingCart(int id, float totalPrice) {
        this.setId(id);
        this.setTotalPrice(totalPrice);
        //Inicia o vetor
        carItens = new ArrayList<CarItem>();
    }

    public int getId() {
        return id;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public ArrayList<CarItem> getCarItens() {
        return carItens;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public void addCarItem(int id, int quantity, Product product)
    {
        this.carItens.add(new CarItem(id, quantity, product));
        calculateTotalPrice();
    }

    public void calculateTotalPrice(){
        this.totalPrice = 0;
        for (CarItem obj: carItens){
            this.totalPrice += obj.getQuantity() * obj.getProduct().getPrice();
        }
    }

    @Override
    public String toString() {
        return "ShoppingCart{" +
                "id=" + id +
                ", totalPrice=" + totalPrice +
                ", carItens=" + carItens +
                '}';
    }
}
