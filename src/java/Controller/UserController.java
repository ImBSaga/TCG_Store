/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.UserModel;
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
public class UserController extends BaseController {
    UserQuery query = new UserQuery();
    ArrayList arrayList = new ArrayList();
    
    public ArrayList login(UserModel model) throws SQLException{
        Map<Integer, Object>map = new HashMap<>();
        map.put(1, model.getUsername());
        
        String sql = this.query.login;
        
        ResultSet rs = this.getWithParameter(map, sql);
        while (rs.next()) {            
            String pass = rs.getString("password");
            boolean check = model.getPassword().equals(pass);
            if(check){
                this.arrayList.add(rs.getString("user_id"));
                this.arrayList.add(rs.getString("name"));
                this.arrayList.add(rs.getString("username"));
                this.arrayList.add(rs.getString("address"));
            }
        }
        return this.arrayList;
    }
    
    public boolean create(UserModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getUsername());
        map.put(3, model.getPassword());
        map.put(4, model.getAddress());

        String sql = this.query.register;

        return this.preparedStatement(map, sql);
    }

}
