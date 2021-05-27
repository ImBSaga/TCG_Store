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
public class UserQuery {
    public String login = "SELECT * FROM user WHERE username = ?";
    public String register = "INSERT INTO user (name, "
            + "username, password, address) VALUES (?,?,?,?)";

}
