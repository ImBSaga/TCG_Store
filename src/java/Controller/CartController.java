/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.CartModel;
import Model.MainModel;
import Query.CartQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Laksamana Zaidan
 */
public class CartController extends BaseController {

    CartQuery query = new CartQuery();
    ArrayList arrayList = new ArrayList();

    public ArrayList get() throws SQLException {
        String query = this.query.get;
        ResultSet rs = this.get(query);

        while (rs.next()) {
            CartModel model = new CartModel();
            model.setid(rs.getString("order_id"));
            model.setname(rs.getString("name"));
            model.setproduct(rs.getString("product"));
            model.setamount(rs.getInt("amount"));
            model.setprice(rs.getInt("price"));
            model.settotal_price(rs.getInt("amount") * rs.getInt("price"));

            arrayList.add(model);
        }
        return arrayList;
    }

    public boolean create(CartModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getCust_id());
        map.put(3, model.getProduct());
        map.put(4, model.getAmount());
        map.put(5, model.getPrice());

        int samount = model.getAmount();
        int sprice = model.getPrice();
        int total = samount * sprice;

        map.put(6, total);
        

        String sql = this.query.create;

        return this.preparedStatement(map, sql);
    }

    public boolean delete(String id) throws SQLException {

        String sql = this.query.delete;

        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id);

        return this.preparedStatement(map, sql);
    }

    public ArrayList cart(String id) throws SQLException {
        String query = this.query.show_user;

        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id);

        ResultSet rs = this.getWithParameter(map, query);

        while (rs.next()) {
            CartModel model = new CartModel();
            model.setid(rs.getString("order_id"));
            model.setname(rs.getString("name"));
            model.setproduct(rs.getString("product"));
            model.setamount(rs.getInt("amount"));
            model.setprice(rs.getInt("price"));
            model.settotal_price(rs.getInt("amount") * rs.getInt("price"));
            model.setstatus(rs.getString("status"));

            arrayList.add(model);
        }
        return arrayList;
    }

    public boolean updateStat(String userID) {
        String query = this.query.stat;
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, userID);

        return this.preparedStatement(map, query);
    }
}
