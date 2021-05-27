/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author user
 */
public class ProductsQuery {

    public String get = "SELECT * FROM products";

    public String show = "SELECT * FROM products WHERE id = ?";

    public String delete = "DELETE FROM products WHERE id = ?";

    public String create = "INSERT INTO products (name, "
            + "category, stock, price, pic, detail) VALUES (?,?,?,?,?,?)";

    public String update = "UPDATE products SET name = ?,"
            + "category = ?, stock = ?, price = ?, pic = ?, detail = ?"
            + " WHERE id = ?";
    
    public String show_user = "SELECT * FROM products WHERE user_id = ?";
    
}
