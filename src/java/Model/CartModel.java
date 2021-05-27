/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Laksamana Zaidan
 */
public class CartModel {
    private String id;
    private String product;
    private int amount;
    private int price;
    private int total_price;
    private String name;
    private String cust_id;
    private String status;
    private String date;

    public String getDate() {
        return date;
    }

    public void setdate(String date) {
        this.date = date;
    }
    

    public String getStatus() {
        return status;
    }

    public void setstatus(String status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setname(String name) {
        this.name = name;
    }

    public String getCust_id() {
        return cust_id;
    }

    public void setcust_id(String cust_id) {
        this.cust_id = cust_id;
    }

    public String getId() {
        return id;
    }

    public void setid(String id) {
        this.id = id;
    }

    public String getProduct() {
        return product;
    }

    public void setproduct(String product) {
        this.product = product;
    }

    public int getAmount() {
        return amount;
    }

    public void setamount(int amount) {
        this.amount = amount;
    }

    public int getPrice() {
        return price;
    }

    public void setprice(int price) {
        this.price = price;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void settotal_price(int total_price) {
        this.total_price = total_price;
    }
    
    
}
