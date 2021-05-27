/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author ASUS
 */
public class CartQuery {

    public String get = "SELECT * FROM cart";

    public String create = "INSERT INTO cart (name, "
            + "user_id, Product, Amount, price, Total_price, date) VALUES (?,?,?,?,?,?,NOW())";

    public String sum = "SELECT SUM(total_price) FROM cart";

    public String delete = "DELETE FROM cart WHERE order_id = ?";

    public String show_user = "SELECT * FROM cart WHERE user_id = ?";

    public String stat = "UPDATE cart set status = 'purchased' WHERE user_id = ?";
    
    

}
