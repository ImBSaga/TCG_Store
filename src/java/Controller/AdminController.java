/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.CartModel;
import Model.UserModel;
import Query.AdminQuery;
import Query.UserQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Laksamana Zaidan
 */
public class AdminController extends BaseController {

    AdminQuery query = new AdminQuery();
    ArrayList arrayList = new ArrayList();

    public ArrayList get() throws SQLException {
        String query = this.query.get;
        ResultSet rs = this.get(query);

        while (rs.next()) {
            CartModel model = new CartModel();
            model.setid(rs.getString("order_id"));
            model.setname(rs.getString("name"));
            model.setcust_id(rs.getString("user_id"));
            model.setproduct(rs.getString("product"));
            model.setamount(rs.getInt("amount"));
            model.setprice(rs.getInt("price"));
            model.settotal_price(rs.getInt("amount") * rs.getInt("price"));
            model.setstatus(rs.getString("status"));
            model.setdate(rs.getString("date"));

            arrayList.add(model);
        }
        return arrayList;
    }

    public ArrayList login(UserModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getUsername());

        String sql = this.query.login;

        ResultSet rs = this.getWithParameter(map, sql);
        while (rs.next()) {
            String pass = rs.getString("password");
            boolean check = model.getPassword().equals(pass);
            if (check) {
                this.arrayList.add(rs.getString("id"));
                this.arrayList.add(rs.getString("name"));
                this.arrayList.add(rs.getString("username"));
            }
        }
        return this.arrayList;
    }
}
