/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author Laksamana Zaidan
 */
public class AdminQuery {

    public String login = "SELECT * FROM admin WHERE username = ?";
    public String get = "SELECT * FROM cart";

}
