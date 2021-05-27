/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Config.DBConnection;
import Controller.CartController;
import Controller.ProductController;
import Model.CartModel;
import Model.MainModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Laksamana Zaidan
 */
public class prdServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("id");

            ProductController mc = new ProductController();
            MainModel model = mc.show(id);

            request.setAttribute("product", model);
            RequestDispatcher dispatch = request.
                    getRequestDispatcher("/views/products.jsp");
            dispatch.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(prdServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            
            String name = (String) session.getAttribute("name");
            String user_id = (String) session.getAttribute("user_id");
            String product = request.getParameter("Product");
            String amount = request.getParameter("amount");
            String price = request.getParameter("price");
            String stat = request.getParameter("status");
            
            System.out.println("amoung: "+amount);
            System.out.println("name: "+name);
            System.out.println("user: "+user_id);
            System.out.println("prod: "+product);
            System.out.println("price: "+price);
            System.out.println("stat: "+stat);

            CartModel model = new CartModel();
            model.setname(name);
            model.setcust_id(user_id);
            model.setproduct(product);
            model.setamount(Integer.parseInt(amount));
            model.setprice(Integer.parseInt(price));

            CartController mc = new CartController();
            boolean check = mc.create(model);

            if (check) {
                response.sendRedirect("./index");
            } else {
                PrintWriter out = response.getWriter();
                out.print("error");

            }
        } catch (SQLException ex) {
            Logger.getLogger(prdServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
