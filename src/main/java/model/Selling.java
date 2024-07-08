package model;

import java.util.Date;

public class Selling {
    int totalprice;
    Date orderdate;

    public Selling() {
    }

    public Selling(int totalprice, Date date) {
        this.totalprice = totalprice;
        this.orderdate = date;
    }

    public int getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(int totalprice) {
        this.totalprice = totalprice;
    }

    public Date getDate() {
        return orderdate;
    }

    public void setDate(Date date) {
        this.orderdate = date;
    }
    
    
}
