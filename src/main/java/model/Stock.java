
package model;

public class Stock {
    String perfume_name;
    int quantity;

    public Stock() {
    }

    public Stock(String perfume_name, int quantity) {
        this.perfume_name = perfume_name;
        this.quantity = quantity;
    }

    public String getPerfume_name() {
        return perfume_name;
    }

    public void setPerfume_name(String perfume_name) {
        this.perfume_name = perfume_name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
